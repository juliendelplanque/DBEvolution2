Class {
	#name : #DBE2Retype,
	#superclass : #DBE2EntityOperator,
	#instVars : [
		'newType'
	],
	#category : #DBEvolution2
}

{ #category : #accessing }
DBE2Retype >> newType [
	^ newType
]

{ #category : #accessing }
DBE2Retype >> newType: anObject [
	newType := anObject
]
