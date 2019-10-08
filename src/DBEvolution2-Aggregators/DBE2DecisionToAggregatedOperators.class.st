"
This object takes the root operator of the decisions tree created by the DBA and returns a (flat) collection of operators.

In this collection, there is no more ""do nothing"" operator nor reference operator.
The latests are aggregated in a way that an operator is created for all reference operator for which the reference is contained by the same entity.
"
Class {
	#name : #DBE2DecisionToAggregatedOperators,
	#superclass : #Object,
	#instVars : [
		'operators'
	],
	#category : #'DBEvolution2-Aggregators'
}

{ #category : #aggregating }
DBE2DecisionToAggregatedOperators class >> aggregate: rootOperator [
	^ self new aggregate: rootOperator
]

{ #category : #aggregating }
DBE2DecisionToAggregatedOperators >> aggregate: rootDecisionOperator [
	"1. Flatten operators as a collection and remove virtual operators."
	operators := rootDecisionOperator flattened reject: #isVirtual.
	"2. Aggregate change target reference operators."
	self aggregateReferencesChangeTargetOperators.
	"3. Converts all operators concerning the same stored procedures to a single ModifyStoredProcedure op.
	 This is needed because one can not modify a stored procedure partially in a DBMS.
	"
	self convertStoredProcedureRelatedOperatorsToModify.
]

{ #category : #aggregating }
DBE2DecisionToAggregatedOperators >> aggregateReferencesChangeTargetOperators [
	| aggregatedOperators |
	aggregatedOperators := OrderedCollection new.
	((self operators select: #isChangeTarget)
		groupedBy: [ :operator | operator reference sourcedBelonger ])
		keysAndValuesDo: [ :sourcedBelonger :references | 
			| updatedSourceCode |
			updatedSourceCode := sourcedBelonger source
				applyChangeTargets: references.
			aggregatedOperators
				add:
					(DBE2ModifySourceCode new
						entity: sourcedBelonger;
						newSourceCode: updatedSourceCode;
						yourself) -> references ].
	aggregatedOperators
		do: [ :assoc | 
			operators
				at: (operators detectIndex: [ :op | assoc value includes: op ])
				put: assoc key.
			operators := operators reject: [ :op | assoc value includes: op ] ]
]

{ #category : #aggregating }
DBE2DecisionToAggregatedOperators >> convertStoredProcedureRelatedOperatorsToModify [
	| storedProceduresRelatedOperators aggregatedOperators |
	storedProceduresRelatedOperators := operators select: #concernsStoredProcedure.
	aggregatedOperators := OrderedCollection new.
	(storedProceduresRelatedOperators groupedBy: #entity)
		keysAndValuesDo: [ :storedProcedure :operatorsToAggregate |
			|aggregatedOperator|
			aggregatedOperator := DBE2ModifyStoredProcedure storedProcedure: storedProcedure.
			operatorsToAggregate do: [ :operatorToAggregate |
				operatorToAggregate beAggregatedForStoredProcedure: aggregatedOperator ].
			aggregatedOperators add: aggregatedOperator ].
	operators := aggregatedOperators , (operators reject: #concernsStoredProcedure)
]

{ #category : #accessing }
DBE2DecisionToAggregatedOperators >> operators [
	^ operators
]

{ #category : #sorting }
DBE2DecisionToAggregatedOperators >> sortViewsAndStoredProceduresModifications: aCollection [ 
	| dependencies orderedOperators viewsAndStoredProceduresToConsider operatorsToConsider |
	viewsAndStoredProceduresToConsider := (aCollection collect: [ :operator |
		{ operator entity . operator entity allDepending } ]) flattened asSet.
	operatorsToConsider := viewsAndStoredProceduresToConsider collect: [ :viewOrStoredProcedure |
		aCollection
			detect: [ :op | op entity = viewOrStoredProcedure ]
			ifNone: [ viewOrStoredProcedure identityModifyOperator ] ].
	dependencies := OrderedCollection new.
	operatorsToConsider do: [ :operator |
		(operator entity allDependencies) do: [ :viewOrStoredProcedureDependency |
			operatorsToConsider
				detect: [ :anyOp | anyOp entity = viewOrStoredProcedureDependency ]
			 	ifFound: [ :op | dependencies add: operator -> op ] ] ].
	orderedOperators := (MalTopologicalSorting new
					nodes: operatorsToConsider;
					edges: dependencies from: #key to: #value;
					run) collect: #model.
	^ orderedOperators
]
