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

{ #category : #comparing }
DBE2ModifyView >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ self viewName = anObject viewName
		and: [ self queryString = anObject queryString and: [ self view = anObject view ] ]
]

{ #category : #converting }
DBE2ModifyView >> asCreate [
	^ DBE2DDLAddView name: self viewName query: self queryString
]

{ #category : #converting }
DBE2ModifyView >> asRemove [
	^ DBE2DDLRemoveView name: self view name
]

{ #category : #testing }
DBE2ModifyView >> concernsStoredProcedure [
	^ false
]

{ #category : #accessing }
DBE2ModifyView >> entity [
	^ self view
]

{ #category : #comparing }
DBE2ModifyView >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ viewName hash bitXor: (queryString hash bitXor: view hash)
]

{ #category : #accessing }
DBE2ModifyView >> queryString [
	^ queryString ifNil: [ queryString := self view query source ]
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
