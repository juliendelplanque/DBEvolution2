"
A DBE2DDLChangeViewSchemaTest is a test class for testing the behavior of DBE2DDLChangeViewSchema
"
Class {
	#name : #DBE2DDLChangeViewSchemaTest,
	#superclass : #TestCase,
	#instVars : [
		'ddl'
	],
	#category : #'DBEvolution2-DDL-Tests'
}

{ #category : #running }
DBE2DDLChangeViewSchemaTest >> setUp [
	super setUp.
	ddl := DBE2DDLChangeViewNamespace new
				viewName: 'my_view';
				namespaceName: 'new_view_schema';
				yourself
]

{ #category : #tests }
DBE2DDLChangeViewSchemaTest >> testGenerateSQL [
	self assert: ddl generateSQL equals: 'ALTER VIEW "my_view" SET SCHEMA "new_view_schema";'
]
