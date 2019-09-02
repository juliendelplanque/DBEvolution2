Class {
	#name : #DBE2EntityRetype,
	#superclass : #DBE2DelegatingRecommandations,
	#instVars : [
		'newType'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #accessing }
DBE2EntityRetype >> newType [
	^ newType
]

{ #category : #accessing }
DBE2EntityRetype >> newType: anObject [
	newType := anObject
]
