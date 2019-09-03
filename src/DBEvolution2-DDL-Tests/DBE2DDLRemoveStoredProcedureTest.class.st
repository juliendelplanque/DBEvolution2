Class {
	#name : #DBE2DDLRemoveStoredProcedureTest,
	#superclass : #TestCase,
	#instVars : [
		'ddl'
	],
	#category : #'DBEvolution2-DDL-Tests'
}

{ #category : #running }
DBE2DDLRemoveStoredProcedureTest >> setUp [
	super setUp.
	ddl := DBE2DDLRemoveStoredProcedure new
				storedProcedureName: 'foo';
				argumentsString: 'x int4, y float';
				yourself
]

{ #category : #tests }
DBE2DDLRemoveStoredProcedureTest >> testGenerateSQL [
	self assert: ddl generateSQL equals: 'DROP FUNCTION "foo"(x int4, y float) RESTRICT;'
]
