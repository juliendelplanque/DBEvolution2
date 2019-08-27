Class {
	#name : #DBE2ReferenceOperator,
	#superclass : #DBE2Operator,
	#instVars : [
		'#reference interface: #(#source #target )'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #'instance creation' }
DBE2ReferenceOperator class >> reference: reference [
	^ self new
		reference: reference;
		yourself
]

{ #category : #accessing }
DBE2ReferenceOperator >> reference [
	^ reference
]

{ #category : #accessing }
DBE2ReferenceOperator >> reference: anObject [
	reference := anObject
]
