Class {
	#name : #DBE2AggregatorsExtensionMethodsTest,
	#superclass : #TestCase,
	#instVars : [
		'storedProcedure'
	],
	#category : #'DBEvolution2-Aggregators-Tests'
}

{ #category : #tests }
DBE2AggregatorsExtensionMethodsTest >> testApplyChangeTargets [
	| sourceCode changeTargets |
	sourceCode := 'DECLARE
BEGIN
	RETURN QUERY SELECT
		function1(column1,column2)::INTEGER AS res1,
		SUM(function2())::INTEGER AS res2
	FROM
		table1
	GROUP BY res1
	ORDER BY res2;
END;'.

	changeTargets := { 
		DBE2ChangeTargetMock new
			start: 38;
			stop: 46;
			newTargetName: 'foo'
			yourself.
		DBE2ChangeTargetMock new
			start: 48;
			stop: 54;
			newTargetName: 'fooCol'
			yourself.
		DBE2ChangeTargetMock new
			start: 89;
			stop: 97;
			newTargetName: 'foo2'
			yourself.
		 }.
	
	self assert: (sourceCode applyChangeTargets: changeTargets) equals: 'DECLARE
BEGIN
	RETURN QUERY SELECT
		foo(fooCol,column2)::INTEGER AS res1,
		SUM(foo2())::INTEGER AS res2
	FROM
		table1
	GROUP BY res1
	ORDER BY res2;
END;'
]
