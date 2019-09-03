Class {
	#name : #DBE2DDLAddColumnTest,
	#superclass : #TestCase,
	#instVars : [
		'ddl'
	],
	#category : #'DBEvolution2-DDL-Tests'
}

{ #category : #running }
DBE2DDLAddColumnTest >> setUp [
	super setUp.
	ddl := DBE2DDLAddColumn new
				columnName: 'id';
				columnTypeName: 'int4';
				targetTableName: 'person';
				yourself
]

{ #category : #tests }
DBE2DDLAddColumnTest >> testGenerateSQL [
	self assert: ddl generateSQL equals: 'ALTER TABLE "person" ADD COLUMN "id" "int4";'
]
