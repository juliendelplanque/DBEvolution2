Class {
	#name : #DBE2DDLRemoveTriggerTest,
	#superclass : #TestCase,
	#instVars : [
		'ddl'
	],
	#category : #'DBEvolution2-DDL-Tests'
}

{ #category : #running }
DBE2DDLRemoveTriggerTest >> setUp [
	super setUp.
	ddl := DBE2DDLRemoveTrigger new
				triggerName: 'trigg';
				tableName: 'person';
				yourself
]

{ #category : #tests }
DBE2DDLRemoveTriggerTest >> testGenerateSQL [
	self assert: ddl generateSQL equals: 'DROP TRIGGER "trigg" ON "person" RESTRICT;'
]
