"
A DBE2ChoiceOperatorTest is a test class for testing the behavior of DBE2ChoiceOperator
"
Class {
	#name : #DBE2ChoiceOperatorTest,
	#superclass : #TestCase,
	#category : #'DBEvolution2-Tests-Core'
}

{ #category : #test }
DBE2ChoiceOperatorTest >> testIsChoiceMade [
	| choiceOperator |
	choiceOperator := DBE2ChoiceOperator new
								possibleRecommandations: { DBE2EntityAdd entity: #mock. DBE2EntityAdd entity: #mack };
								yourself.
								
	self deny: choiceOperator isChoiceMade.
	
	choiceOperator chosenRecommandation: choiceOperator possibleRecommandations first.
	
	self assert: choiceOperator isChoiceMade.
]
