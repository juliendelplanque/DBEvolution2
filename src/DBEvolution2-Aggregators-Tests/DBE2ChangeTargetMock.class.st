Class {
	#name : #DBE2ChangeTargetMock,
	#superclass : #DBE2ChangeTarget,
	#instVars : [
		'start',
		'stop'
	],
	#category : #'DBEvolution2-Aggregators-Tests'
}

{ #category : #accessing }
DBE2ChangeTargetMock >> start [
	^ start
]

{ #category : #accessing }
DBE2ChangeTargetMock >> start: anObject [
	start := anObject
]

{ #category : #accessing }
DBE2ChangeTargetMock >> stop [
	^ stop
]

{ #category : #accessing }
DBE2ChangeTargetMock >> stop: anObject [
	stop := anObject
]
