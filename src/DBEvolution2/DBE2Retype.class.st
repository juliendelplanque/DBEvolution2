Class {
	#name : #DBE2Retype,
	#superclass : #DBE2DelegatingRecommandations,
	#instVars : [
		'newType'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #accessing }
DBE2Retype >> newType [
	^ newType
]

{ #category : #accessing }
DBE2Retype >> newType: anObject [
	newType := anObject
]
