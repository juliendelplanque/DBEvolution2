Class {
	#name : #DBE2DDLRemoveColumnTest,
	#superclass : #TestCase,
	#instVars : [
		'ddl'
	],
	#category : #'DBEvolution2-DDL-Tests'
}

{ #category : #running }
DBE2DDLRemoveColumnTest >> setUp [
	super setUp.
	ddl := DBE2DDLRemoveColumn new
				tableName: 'person';
				columnName: 'id';
				yourself
]

{ #category : #tests }
DBE2DDLRemoveColumnTest >> testGenerateSQL [
	self assert: ddl generateSQL equals: 'ALTER TABLE "person" DROP COLUMN "id";'
]
