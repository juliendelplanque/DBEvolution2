Class {
	#name : #DBE2DDLRemoveView,
	#superclass : #DBE2DDL,
	#instVars : [
		'viewName'
	],
	#category : #'DBEvolution2-DDL'
}

{ #category : #template }
DBE2DDLRemoveView >> queriesTemplate [
	^ 'DROP VIEW "{viewName}" RESTRICT;'
]

{ #category : #accessing }
DBE2DDLRemoveView >> viewName [
	^ viewName
]

{ #category : #accessing }
DBE2DDLRemoveView >> viewName: anObject [
	viewName := anObject
]
