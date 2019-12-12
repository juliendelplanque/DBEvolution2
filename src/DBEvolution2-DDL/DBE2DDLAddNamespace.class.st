Class {
	#name : #DBE2DDLAddNamespace,
	#superclass : #DBE2DDL,
	#instVars : [
		'namespaceName'
	],
	#category : #'DBEvolution2-DDL'
}

{ #category : #accessing }
DBE2DDLAddNamespace >> namespaceName [
	^ namespaceName
]

{ #category : #accessing }
DBE2DDLAddNamespace >> namespaceName: anObject [
	namespaceName := anObject
]

{ #category : #template }
DBE2DDLAddNamespace >> queriesTemplate [
	^ 'CREATE SCHEMA "{namespaceName}";'
]
