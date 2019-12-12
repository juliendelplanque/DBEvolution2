"
A DBE2DDLAddNamespaceTest is a test class for testing the behavior of DBE2DDLAddNamespace
"
Class {
	#name : #DBE2DDLAddNamespaceTest,
	#superclass : #TestCase,
	#instVars : [
		'ddl'
	],
	#category : #'DBEvolution2-DDL-Tests'
}

{ #category : #running }
DBE2DDLAddNamespaceTest >> setUp [
	super setUp.
	ddl := DBE2DDLAddNamespace new
				namespaceName: 'foo';
				yourself
]

{ #category : #tests }
DBE2DDLAddNamespaceTest >> testGenerateSQL [
	self assert: ddl generateSQL equals: 'CREATE SCHEMA "foo";'
]
