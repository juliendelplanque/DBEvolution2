Class {
	#name : #DBE2FmxSQLReference,
	#superclass : #DBE2Reference,
	#instVars : [
		'wrappedReference'
	],
	#category : #'DBEvolution2-Model'
}

{ #category : #'instance creation' }
DBE2FmxSQLReference class >> wrap: aFmxSQLReference [
	^ self new
		wrappedReference: aFmxSQLReference;
		yourself
]

{ #category : #accessing }
DBE2FmxSQLReference >> from [
	^ self wrappedReference from
]

{ #category : #accessing }
DBE2FmxSQLReference >> to [
	^ self wrappedReference to
]

{ #category : #accessing }
DBE2FmxSQLReference >> wrappedReference [
	^ wrappedReference
]

{ #category : #accessing }
DBE2FmxSQLReference >> wrappedReference: anObject [
	wrappedReference := anObject
]