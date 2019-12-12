Class {
	#name : #DBE2Scheduler,
	#superclass : #Object,
	#instVars : [
		'operators'
	],
	#category : #'DBEvolution2-Scheduler'
}

{ #category : #'as yet unclassified' }
DBE2Scheduler >> convertModifyOperatorsToDeleteCreate [
	| modifyOperators |
	modifyOperators := self operators select: #isModifyEntityOperator.
	modifyOperators := self sortViewsAndStoredProceduresModifications: modifyOperators.
	self operators:
		(modifyOperators reversed collect: #asRemove) ,
		(self operators reject: #isModifyEntityOperator) ,
		(modifyOperators collect: #asCreate)
]

{ #category : #accessing }
DBE2Scheduler >> operators [
	^ operators
]

{ #category : #accessing }
DBE2Scheduler >> operators: anObject [
	operators := anObject
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
