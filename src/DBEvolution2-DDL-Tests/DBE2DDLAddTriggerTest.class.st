"
A DBE2DDLAddTriggerTest is a test class for testing the behavior of DBE2DDLAddTrigger
"
Class {
	#name : #DBE2DDLAddTriggerTest,
	#superclass : #TestCase,
	#instVars : [
		'ddl'
	],
	#category : #'DBEvolution2-DDL-Tests'
}

{ #category : #running }
DBE2DDLAddTriggerTest >> setUp [
	super setUp.
	ddl := DBE2DDLAddTrigger new
				triggerName: 'foo';
				firingActionName: 'UPDATE';
				whenName: 'AFTER';
				tableName: 'fooTable';
				storedProcedureName: 'fooSp';
				yourself
]

{ #category : #tests }
DBE2DDLAddTriggerTest >> testGenerateSQL [
	self assert: ddl generateSQL equals: 'CREATE TRIGGER "foo" AFTER UPDATE ON "fooTable" EXECUTE PROCEDURE "fooSp"();'
]
