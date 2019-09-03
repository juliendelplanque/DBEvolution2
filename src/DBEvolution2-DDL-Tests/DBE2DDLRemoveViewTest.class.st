Class {
	#name : #DBE2DDLRemoveViewTest,
	#superclass : #TestCase,
	#instVars : [
		'ddl'
	],
	#category : #'DBEvolution2-DDL-Tests'
}

{ #category : #running }
DBE2DDLRemoveViewTest >> setUp [
	super setUp.
	ddl := DBE2DDLRemoveView new
				viewName: 'adult_view';
				yourself
]

{ #category : #tests }
DBE2DDLRemoveViewTest >> testGenerateSQL [
	self assert: ddl generateSQL equals: 'DROP VIEW "adult_view" RESTRICT;'
]
