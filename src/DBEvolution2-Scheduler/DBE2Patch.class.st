"
I model a SQL script that can be serialize as SQL queries to apply the change on a DB.
"
Class {
	#name : #DBE2Patch,
	#superclass : #Object,
	#instVars : [
		'operators',
		'generateInTransaction'
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
DBE2Patch >> generateInTransaction [
	^ generateInTransaction
]

{ #category : #accessing }
DBE2Patch >> generateInTransaction: anObject [
	generateInTransaction := anObject
]

{ #category : #'sql-generation' }
DBE2Patch >> generateSQL [
	^ String streamContents: [ :stream | self generateSQLOn: stream ]
]

{ #category : #'sql-generation' }
DBE2Patch >> generateSQLOn: aStream [
	self generateInTransaction
		ifTrue: [
			aStream nextPutAll: 'BEGIN;'.
			aStream nextPutAll: Smalltalk os lineEnding ].
	
	self operators
		do: [ :operator | operator generateSQLOn: aStream ]
		separatedBy: [ aStream nextPutAll: Smalltalk os lineEnding ].
	
	self generateInTransaction
		ifFalse: [ ^ self ].
	
	aStream nextPutAll: 'COMMIT;'.
	aStream nextPutAll: Smalltalk os lineEnding
]

{ #category : #initialization }
DBE2Patch >> initialize [
	super initialize.
	self generateInTransaction: true.
]

{ #category : #accessing }
DBE2Patch >> operators [
	^ operators
]

{ #category : #accessing }
DBE2Patch >> operators: anObject [
	operators := anObject
]
