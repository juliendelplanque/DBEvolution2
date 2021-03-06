Class {
	#name : #DBE2ChoiceOperator,
	#superclass : #DBE2Operator,
	#instVars : [
		'possibleRecommandations',
		'chosenRecommandation'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #'instance creation' }
DBE2ChoiceOperator class >> possibleRecommandations: possibleRecommandations [
	<generated>
	^ self new
		possibleRecommandations: possibleRecommandations;
		yourself
]

{ #category : #visiting }
DBE2ChoiceOperator >> acceptVisitor: anOperatorVisitor [
	<generated>
	^ anOperatorVisitor visitChoiceOperator: self
]

{ #category : #accessing }
DBE2ChoiceOperator >> chosenRecommandation [
	^ chosenRecommandation
]

{ #category : #accessing }
DBE2ChoiceOperator >> chosenRecommandation: anObject [
	chosenRecommandation := anObject
]

{ #category : #printing }
DBE2ChoiceOperator >> innerPrintOn: aStream [
	self isChoiceMade
		ifFalse: [ 
			aStream nextPutAll: 'Choice is to be made.'.
			^ self ].
		
	aStream print: self chosenRecommandation 
]

{ #category : #testing }
DBE2ChoiceOperator >> isChoiceMade [
	^ self chosenRecommandation isNotNil
]

{ #category : #testing }
DBE2ChoiceOperator >> isChoiceOperator [
	^ true
]

{ #category : #accessing }
DBE2ChoiceOperator >> possibleRecommandations [
	^ possibleRecommandations
]

{ #category : #accessing }
DBE2ChoiceOperator >> possibleRecommandations: anObject [
	possibleRecommandations := anObject
]

{ #category : #accessing }
DBE2ChoiceOperator >> recommandations [
	self isChoiceMade
		ifFalse: [ DBE2ChoiceRequired signalForOperator: self ].
	^ self chosenRecommandation recommandations
]
