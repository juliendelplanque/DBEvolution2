Class {
	#name : #DBE2DDLRemoveView,
	#superclass : #DBE2DDL,
	#instVars : [
		'viewName'
	],
	#category : #'DBEvolution2-DDL'
}

{ #category : #'instance creation' }
DBE2DDLRemoveView class >> name: aString [ 
	^ self new
		viewName: aString;
		yourself
]

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
