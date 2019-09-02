Class {
	#name : #DBE2Remove,
	#superclass : #DBE2DelegatingRecommandations,
	#category : #'DBEvolution2-Core'
}

{ #category : #recommandations }
DBE2Remove >> recommandationsForColumn: aColumn on: operatorsStream [
	self incomingReferences
		do: [ :reference | operatorsStream nextPut: (DBE2ReferenceRemove reference: reference) ]
]
