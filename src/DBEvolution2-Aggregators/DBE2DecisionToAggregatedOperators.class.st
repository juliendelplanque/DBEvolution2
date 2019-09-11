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

{ #category : #'as yet unclassified' }
DBE2DecisionToAggregatedOperators >> aggregate: rootDecisionOperator [
	|aggregatedOperators|
	"1. Flatten operators as a collection and remove 'do nothing'."
	operators := rootDecisionOperator flattened reject: #isDoNothing.
	"2. Aggregate."
	aggregatedOperators := OrderedCollection new.
	((self operators select: #isChangeTarget) groupedBy: #sourcedBelonger) keysAndValuesDo: [ :sourcedBelonger :references |
		|updatedSourceCode|
		updatedSourceCode := self applyChangeTargets: references to: sourcedBelonger source.
		aggregatedOperators 
			add: (DBE2ModifySourceCode new
						entity: sourcedBelonger;
						newSourceCode: updatedSourceCode;
						yourself) -> references ].
	aggregatedOperators do: [ :assoc |
		operators at: (self operators detectIndex: [ :op | assoc value includes: op ]) put: assoc key.
		operators := (self operators reject: [ :op | assoc value includes: op ]) ]
]

{ #category : #'as yet unclassified' }
DBE2DecisionToAggregatedOperators >> applyChangeTargets: changeTargets to: sourceCode [
	"To be sure the order stays the same in this method."
	| orderedReferenceRenamings lastIndex |
	orderedReferenceRenamings := changeTargets asOrderedCollection sorted: [ :a :b | a start < b start ].
	lastIndex := 1.
	^ String streamContents: [ :stream |
		orderedReferenceRenamings do: [ :referenceRename |
			(referenceRename start > lastIndex)
				ifTrue: [ 
					stream << (sourceCode copyFrom: lastIndex to: referenceRename start - 1).
					lastIndex := referenceRename start ].
			referenceRename start = lastIndex
				ifTrue: [ stream << referenceRename newReferenceName ].
			lastIndex := referenceRename stop + 1 ].
		lastIndex < sourceCode size
			ifTrue: [ stream << (sourceCode copyFrom: lastIndex to: sourceCode size) ] ]
]

{ #category : #accessing }
DBE2DecisionToAggregatedOperators >> operators [
	^ operators
]
