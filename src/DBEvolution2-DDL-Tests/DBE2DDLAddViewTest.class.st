Class {
	#name : #DBE2DDLAddViewTest,
	#superclass : #TestCase,
	#instVars : [
		'ddl'
	],
	#category : #'DBEvolution2-DDL-Tests'
}

{ #category : #running }
DBE2DDLAddViewTest >> setUp [
	super setUp.
	ddl := DBE2DDLAddView new
				viewName: 'view_adults';
				query: 'SELECT * FROM person WHERE age >= 18';
				yourself
]

{ #category : #tests }
DBE2DDLAddViewTest >> testGenerateSQL [
	self assert: ddl generateSQL equals: 'CREATE VIEW "view_adults" AS SELECT * FROM person WHERE age >= 18;'
]
