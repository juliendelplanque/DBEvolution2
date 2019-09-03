Class {
	#name : #DBE2DDLAddView,
	#superclass : #DBE2DDL,
	#instVars : [
		'viewName',
		'query'
	],
	#category : #'DBEvolution2-DDL'
}

{ #category : #template }
DBE2DDLAddView >> queriesTemplate [
	^ 'CREATE VIEW "{viewName}" AS {query};'
]

{ #category : #accessing }
DBE2DDLAddView >> query [
	^ query
]

{ #category : #accessing }
DBE2DDLAddView >> query: anObject [
	query := anObject
]

{ #category : #accessing }
DBE2DDLAddView >> viewName [
	^ viewName
]

{ #category : #accessing }
DBE2DDLAddView >> viewName: anObject [
	viewName := anObject
]
