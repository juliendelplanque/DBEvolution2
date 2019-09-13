Class {
	#name : #DBE2SimulatedFmxSQLReference,
	#superclass : #DBE2Reference,
	#instVars : [
		'from',
		'to'
	],
	#category : #'DBEvolution2-Model'
}

{ #category : #'instance creation' }
DBE2SimulatedFmxSQLReference class >> from: from to: to [
	^ self new
		from: from;
		to: to;
		yourself
]

{ #category : #accessing }
DBE2SimulatedFmxSQLReference >> from [
	^ from
]

{ #category : #accessing }
DBE2SimulatedFmxSQLReference >> from: anObject [
	from := anObject
]

{ #category : #accessing }
DBE2SimulatedFmxSQLReference >> sourceAnchor [
	"There is no source anchor for a simulated reference."
	FmxSQLNoSourceAnchor signal: self
]

{ #category : #accessing }
DBE2SimulatedFmxSQLReference >> to [
	^ to
]

{ #category : #accessing }
DBE2SimulatedFmxSQLReference >> to: anObject [
	to := anObject
]
