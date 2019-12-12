Class {
	#name : #DBE2Scheduler,
	#superclass : #Object,
	#instVars : [
		'operators'
	],
	#category : #'DBEvolution2-Scheduler'
}

{ #category : #api }
DBE2Scheduler class >> schedule: collectionOfOperators [
	^ self new
		operators: collectionOfOperators;
		schedule
]

{ #category : #converting }
DBE2Scheduler >> convertModifyOperatorsToDeleteCreate [
	| modifyOperators |
	modifyOperators := self operators select: #isModifyEntityOperator.
	modifyOperators := self sortViewsAndStoredProceduresModifications: modifyOperators.
	^ DBE2Patch operators:
		(modifyOperators reversed collect: #asRemoveDDL) ,
		(self operators reject: #isModifyEntityOperator thenCollect: #asDDL),
		(modifyOperators collect: #asCreateDDL)
]

{ #category : #accessing }
DBE2Scheduler >> operators [
	^ operators
]

{ #category : #accessing }
DBE2Scheduler >> operators: anObject [
	operators := anObject
]

{ #category : #api }
DBE2Scheduler >> schedule [
	^ self convertModifyOperatorsToDeleteCreate
]

{ #category : #sorting }
DBE2Scheduler >> sortViewsAndStoredProceduresModifications: aCollection [ 
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
