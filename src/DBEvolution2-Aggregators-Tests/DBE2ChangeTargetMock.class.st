Class {
	#name : #DBE2ChangeTargetMock,
	#superclass : #DBE2ChangeTarget,
	#instVars : [
		'start',
		'end'
	],
	#category : #'DBEvolution2-Aggregators-Tests'
}

{ #category : #accessing }
DBE2ChangeTargetMock >> end [
	^ end
]

{ #category : #accessing }
DBE2ChangeTargetMock >> end: anObject [
	end := anObject
]

{ #category : #accessing }
DBE2ChangeTargetMock >> start [
	^ start
]

{ #category : #accessing }
DBE2ChangeTargetMock >> start: anObject [
	start := anObject
]
