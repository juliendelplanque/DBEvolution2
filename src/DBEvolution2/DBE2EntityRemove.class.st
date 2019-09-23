"
Removing an entity is defined as removing #entity from its container and remove all references to it.
"
Class {
	#name : #DBE2EntityRemove,
	#superclass : #DBE2DelegatingRecommandations,
	#category : #'DBEvolution2-Core'
}

{ #category : #visiting }
DBE2EntityRemove >> acceptVisitor: anOperatorVisitor [
	<generated>
	^ anOperatorVisitor visitEntityRemove: self
]

{ #category : #references }
DBE2EntityRemove >> incomingReferencesForForeignKeyConstraint [
	"There is no entity referencing a foreign key."
	^ #()
]

{ #category : #references }
DBE2EntityRemove >> incomingReferencesForPrimaryKeyConstraint [
	"Gather the foreign keys that require the primary key to be in the base."
	^ (self entity outgoingColumnReferences collect: [ :outgoingReference |
		|column|
		column := outgoingReference to.
		column references select: [ :ref | ref from isForeignKey ] thenCollect: [ :ref |
			DBE2FmxSQLReference wrap: ref ] ]) flattened
]

{ #category : #printing }
DBE2EntityRemove >> innerPrintOn: aStream [
	aStream print: self entity name
]

{ #category : #recommandations }
DBE2EntityRemove >> recommandToRemoveIncomingReferencesOn: operatorsStream [
	self incomingReferences
		do:
			[ :ref | operatorsStream nextPut: (DBE2ReferenceRemove reference: ref) ]
]

{ #category : #recommandations }
DBE2EntityRemove >> recommandationsForColumnOn: operatorsStream [
	self recommandToRemoveIncomingReferencesOn: operatorsStream
]

{ #category : #recommandations }
DBE2EntityRemove >> recommandationsForForeignKeyConstraintOn: operatorsStream [
	"Removing a foreign key has no impact.
	 Thus, no recommandation is provided.
	"
]

{ #category : #recommandations }
DBE2EntityRemove >> recommandationsForPrimaryKeyConstraintOn: operatorsStream [
	self recommandToRemoveIncomingReferencesOn: operatorsStream
]
