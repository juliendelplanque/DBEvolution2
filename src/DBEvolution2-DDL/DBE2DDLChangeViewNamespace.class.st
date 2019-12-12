Class {
	#name : #DBE2DDLChangeViewNamespace,
	#superclass : #DBE2DDL,
	#instVars : [
		'viewName',
		'namespaceName'
	],
	#category : #'DBEvolution2-DDL'
}

{ #category : #accessing }
DBE2DDLChangeViewNamespace >> namespaceName [
	^ namespaceName
]

{ #category : #accessing }
DBE2DDLChangeViewNamespace >> namespaceName: anObject [
	namespaceName := anObject
]

{ #category : #template }
DBE2DDLChangeViewNamespace >> queriesTemplate [
	^ 'ALTER VIEW "{viewName}" SET SCHEMA "{namespaceName}";'
]

{ #category : #accessing }
DBE2DDLChangeViewNamespace >> viewName [
	^ viewName
]

{ #category : #accessing }
DBE2DDLChangeViewNamespace >> viewName: anObject [
	viewName := anObject
]
