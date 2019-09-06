Class {
	#name : #DBE2HasChoiceVisitor,
	#superclass : #DBE2OperatorVisitor,
	#instVars : [
		'hasChoice'
	],
	#category : #'DBEvolution2-Visitors'
}

{ #category : #testing }
DBE2HasChoiceVisitor class >> hasChoice: anOperator [
	^ self new
		visit: anOperator;
		hasChoice
]

{ #category : #accessing }
DBE2HasChoiceVisitor >> hasChoice [
	^ hasChoice
]

{ #category : #initialization }
DBE2HasChoiceVisitor >> initialize [
	super initialize.
	hasChoice := false
]

{ #category : #visiting }
DBE2HasChoiceVisitor >> visitChoiceOperator: aChoiceOperator [
	hasChoice := hasChoice or: [ aChoiceOperator isChoiceMade not ].
	hasChoice
		ifTrue: [ ^ self ].
	
	^ super visitChoiceOperator: aChoiceOperator
]
