Class {
	#name : #DBE2Patch,
	#superclass : #Object,
	#instVars : [
		'operators'
	],
	#category : #'DBEvolution2-Scheduler'
}

{ #category : #'instance creation' }
DBE2Patch class >> operators: operators [
	^ self new
		operators: operators;
		yourself
]

{ #category : #accessing }
DBE2Patch >> operators [
	^ operators
]

{ #category : #accessing }
DBE2Patch >> operators: anObject [
	operators := anObject
]
