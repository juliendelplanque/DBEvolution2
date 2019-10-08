Class {
	#name : #DBE2ModifyStoredProcedure,
	#superclass : #Object,
	#instVars : [
		'storedProcedure',
		'bodySourceCode',
		'storedProcedureName'
	],
	#category : #'DBEvolution2-Aggregators'
}

{ #category : #'instance creation' }
DBE2ModifyStoredProcedure class >> storedProcedure: storedProcedure [
	^ self new
		storedProcedure: storedProcedure;
		yourself
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> bodySourceCode [
	^ bodySourceCode
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> bodySourceCode: anObject [
	bodySourceCode := anObject
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> storedProcedure [
	^ storedProcedure
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> storedProcedure: anObject [
	storedProcedure := anObject
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> storedProcedureName [
	^ storedProcedureName
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> storedProcedureName: anObject [
	storedProcedureName := anObject
]
