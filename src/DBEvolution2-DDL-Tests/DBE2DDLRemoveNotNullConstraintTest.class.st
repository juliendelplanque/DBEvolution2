Class {
	#name : #DBE2DDLRemoveNotNullConstraintTest,
	#superclass : #TestCase,
	#instVars : [
		'ddl'
	],
	#category : #'DBEvolution2-DDL-Tests'
}

{ #category : #running }
DBE2DDLRemoveNotNullConstraintTest >> setUp [
	super setUp.
	ddl := DBE2DDLRemoveNotNullConstraint new
				tableName: 'person';
				columnName: 'name';
				yourself
]

{ #category : #tests }
DBE2DDLRemoveNotNullConstraintTest >> testGenerateSQL [
	self assert: ddl generateSQL equals: 'ALTER TABLE "person" ALTER COLUMN "name" DROP NOT NULL;'
]
