Class {
	#name : #DBE2EntityRemove,
	#superclass : #DBE2DelegatingRecommandations,
	#category : #'DBEvolution2-Core'
}

{ #category : #references }
DBE2EntityRemove >> incomingReferencesForPrimaryKeyConstraint [
	"Gather the foreign keys that require the primary key to be in the base."
	^ (self entity outgoingColumnReferences collect: [ :outgoingReference |
		|column|
		column := outgoingReference to.
		column references select: [ :ref | ref from isForeignKey ] thenCollect: [ :ref |
			DBE2FmxSQLReference wrap: ref ] ]) flattened
]

{ #category : #recommandations }
DBE2EntityRemove >> recommandationsForColumnOn: operatorsStream [
	self incomingReferences
		do: [ :reference | operatorsStream nextPut: (DBE2ReferenceRemove reference: reference) ]
]

{ #category : #recommandations }
DBE2EntityRemove >> recommandationsForPrimaryKeyConstraintOn: operatorsStream [ 
	self incomingReferences do: [ :ref |
		operatorsStream nextPut: (DBE2ReferenceRemove reference: ref) ]
]
