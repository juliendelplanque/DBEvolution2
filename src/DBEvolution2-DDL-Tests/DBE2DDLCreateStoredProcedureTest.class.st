Class {
	#name : #DBE2DDLCreateStoredProcedureTest,
	#superclass : #TestCase,
	#instVars : [
		'ddl'
	],
	#category : #'DBEvolution2-DDL-Tests'
}

{ #category : #running }
DBE2DDLCreateStoredProcedureTest >> setUp [
	super setUp.
	ddl := DBE2DDLCreateStoredProcedure new
				storedProcedureName: 'sum';
				argumentsString: 'x int4, y int4';
				returnTypeName: 'int4';
				sourceCode: 'x + y;';
				yourself
]

{ #category : #tests }
DBE2DDLCreateStoredProcedureTest >> testGenerateSQL [
	self assert: ddl generateSQL equals: 'CREATE FUNCTION "sum"(x int4, y int4) RETURNS int4 AS $$x + y;$$ LANGUAGE plpgsql;'
]
