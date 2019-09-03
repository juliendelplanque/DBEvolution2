"
A DBE2DDLRenameColumnTest is a test class for testing the behavior of DBE2DDLRenameColumn
"
Class {
	#name : #DBE2DDLRenameColumnTest,
	#superclass : #TestCase,
	#instVars : [
		'ddl'
	],
	#category : #'DBEvolution2-DDL-Tests'
}

{ #category : #running }
DBE2DDLRenameColumnTest >> setUp [
	super setUp.
	ddl := DBE2DDLRenameColumn new
				tableName: 'person';
				columnName: 'name';
				newColumnName: 'firstname';
				yourself
]

{ #category : #tests }
DBE2DDLRenameColumnTest >> testGenerateSQL [
	self assert: ddl generateSQL equals: 'ALTER TABLE "person" RENAME COLUMN "name" TO "firstname";'
]
