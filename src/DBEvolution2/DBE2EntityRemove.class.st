Class {
	#name : #DBE2EntityRemove,
	#superclass : #DBE2DelegatingRecommandations,
	#category : #'DBEvolution2-Core'
}

{ #category : #recommandations }
DBE2EntityRemove >> recommandationsForColumnOn: operatorsStream [
	self incomingReferences
		do: [ :reference | operatorsStream nextPut: (DBE2ReferenceRemove reference: reference) ]
]
