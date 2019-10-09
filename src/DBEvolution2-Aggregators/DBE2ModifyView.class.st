Class {
	#name : #DBE2ModifyView,
	#superclass : #Object,
	#instVars : [
		'view',
		'queryString',
		'viewName'
	],
	#category : #'DBEvolution2-Aggregators'
}

{ #category : #'instance creation' }
DBE2ModifyView class >> view: view [
	^ self new
		view: view;
		yourself
]

{ #category : #testing }
DBE2ModifyView >> concernsStoredProcedure [
	^ false
]

{ #category : #accessing }
DBE2ModifyView >> queryString [
	^ queryString
]

{ #category : #accessing }
DBE2ModifyView >> queryString: anObject [
	queryString := anObject
]

{ #category : #accessing }
DBE2ModifyView >> view [
	^ view
]

{ #category : #accessing }
DBE2ModifyView >> view: anObject [
	view := anObject
]

{ #category : #accessing }
DBE2ModifyView >> viewName [
	^ viewName ifNil: [ viewName := self view name ]
]

{ #category : #accessing }
DBE2ModifyView >> viewName: anObject [
	viewName := anObject
]
