Class {
	#name : #DBE2DDLCreateTriggerTest,
	#superclass : #TestCase,
	#instVars : [
		'ddl'
	],
	#category : #'DBEvolution2-DDL-Tests'
}

{ #category : #running }
DBE2DDLCreateTriggerTest >> setUp [
	super setUp.
	ddl := DBE2DDLCreateTrigger new
				triggerName: 'handle_update';
				tableName: 'person';
				when: 'BEFORE';
				firingAction: 'UPDATE';
				storedProcedureName: 'act_for_update';
				yourself
]

{ #category : #tests }
DBE2DDLCreateTriggerTest >> testGenerateSQL [
	self assert: ddl generateSQL equals: 'CREATE TRIGGER "handle_update" BEFORE UPDATE ON "person" EXECUTE PROCEDURE "act_for_update"();'
]
