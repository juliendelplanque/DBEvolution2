Class {
	#name : #DBE2ChoiceOperator,
	#superclass : #DBE2Operator,
	#instVars : [
		'possibleRecommandations',
		'chosenRecommandation'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #accessing }
DBE2ChoiceOperator >> chosenRecommandation [
	^ chosenRecommandation
]

{ #category : #accessing }
DBE2ChoiceOperator >> chosenRecommandation: anObject [
	chosenRecommandation := anObject
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
	self chosenRecommandation
		ifNil: [ DBE2ChoiceRequired signalForOperator: self ].
	^ self chosenRecommandation recommandations
]
