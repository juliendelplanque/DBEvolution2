Class {
	#name : #DBE2Rename,
	#superclass : #DBE2EntityOperator,
	#instVars : [
		'newName'
	],
	#category : #DBEvolution2
}

{ #category : #accessing }
DBE2Rename >> newName [
	^ newName
]

{ #category : #accessing }
DBE2Rename >> newName: anObject [
	newName := anObject
]