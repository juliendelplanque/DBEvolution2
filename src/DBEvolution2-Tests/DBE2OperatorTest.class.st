"
A DBE2OperatorTest is a test class for testing the behavior of DBE2Operator
"
Class {
	#name : #DBE2OperatorTest,
	#superclass : #TestCase,
	#category : #'DBEvolution2-Tests-Core'
}

{ #category : #test }
DBE2OperatorTest >> testFlattened [
	| op1 op2 op3 op4 |
	op1 := DBE2MockOperator new.
	op2 := DBE2MockOperator new.
	op3 := DBE2MockOperator new.
	op4 := DBE2MockOperator new.
	op1
		recommandations:
			{(op2
				recommandations: {op3};
				yourself).
			op4};
		yourself.
	self
		assert: op1 flattened asArray
		equals:
			{op3.
			op2.
			op4.
			op1}
]

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
