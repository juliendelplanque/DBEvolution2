Class {
	#name : #DBE2DDL,
	#superclass : #Object,
	#category : #'DBEvolution2-DDL'
}

{ #category : #'sql-generation' }
DBE2DDL >> generateSQL [
	^ String streamContents: [ :stream | self generateSQLOn: stream ]
]

{ #category : #'sql-generation' }
DBE2DDL >> generateSQLOn: aStream [
	| formatDict |
	formatDict := (self class slots collect: [ :slot |
		slot name -> (slot read: self) ]) asDictionary.
	
	aStream nextPutAll: (self queriesTemplate format: formatDict)
]

{ #category : #printing }
DBE2DDL >> printOn: aStream [
	super printOn: aStream.
	aStream nextPut: $(.
	self generateSQLOn: aStream.
	aStream nextPut: $)
]

{ #category : #template }
DBE2DDL >> queriesTemplate [
	"Returns a string which is a template to generate SQL queries implementing the operator."
	^ self subclassResponsibility
]
