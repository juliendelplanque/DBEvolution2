Class {
	#name : #DBE2OperatorsFlattener,
	#superclass : #DBE2OperatorVisitor,
	#instVars : [
		'operators'
	],
	#category : #'DBEvolution2-Visitors'
}

{ #category : #flattening }
DBE2OperatorsFlattener class >> flatten: anOperator [
	^ self new
		visit: anOperator;
		operators
]

{ #category : #initialization }
DBE2OperatorsFlattener >> initialize [
	super initialize.
	self operators: OrderedCollection new
]

{ #category : #accessing }
DBE2OperatorsFlattener >> operators [
	^ operators
]

{ #category : #accessing }
DBE2OperatorsFlattener >> operators: anObject [
	operators := anObject
]

{ #category : #visiting }
DBE2OperatorsFlattener >> visitChoiceOperator: aChoiceOperator [
	aChoiceOperator isChoiceMade
		ifFalse: [ self error: 'Some decisions are not taken.' ].
	self visit: aChoiceOperator chosenRecommandation.
	^ self operators
]

{ #category : #visiting }
DBE2OperatorsFlattener >> visitOperator: anOperator [
	anOperator recommandations do: [ :op | self visit: op ].
	self operators add: anOperator.
	^ self operators
]
