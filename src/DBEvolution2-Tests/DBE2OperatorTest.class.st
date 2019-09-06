"
A DBE2OperatorTest is a test class for testing the behavior of DBE2Operator
"
Class {
	#name : #DBE2OperatorTest,
	#superclass : #TestCase,
	#category : #'DBEvolution2-Tests-Core'
}

{ #category : #test }
DBE2OperatorTest >> testHasChoiceToMake [
	| operator |
	operator := (DBE2MockOperator new)
						recommandations: { 
							DBE2ChoiceOperator new
								possibleRecommandations: { 
									(DBE2MockOperator new)
										recommandations: { 
											DBE2ChoiceOperator new
												possibleRecommandations: { 
													DBE2MockOperator new.
													DBE2MockOperator new };
												yourself };
										yourself.
									DBE2MockOperator new };
								yourself };
								yourself.
	
	self assert: operator hasChoiceToMake.
	
	operator recommandations first chosenRecommandation: operator recommandations first possibleRecommandations first.
	
	self assert: operator hasChoiceToMake.

	operator recommandations first recommandations first chosenRecommandation: operator recommandations first recommandations first possibleRecommandations first.
	
	self deny: operator hasChoiceToMake.
]
