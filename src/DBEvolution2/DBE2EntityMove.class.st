"
Moving an #entity is defined as changing its container to become #newContainer and adapting the references to it.
"
Class {
	#name : #DBE2EntityMove,
	#superclass : #DBE2DelegatingRecommandations,
	#instVars : [
		'newContainer'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #'instance creation' }
DBE2EntityMove class >> entity: anEntity newContainer: aContainer [
	^ self new
		entity: anEntity;
		newContainer: aContainer;
		yourself
]

{ #category : #visiting }
DBE2EntityMove >> acceptVisitor: anOperatorVisitor [
	<generated>
	^ anOperatorVisitor visitEntityMove: self
]

{ #category : #references }
DBE2EntityMove >> incomingReferencesForView [
	self flag: #TODO.
	^ #()
]

{ #category : #accessing }
DBE2EntityMove >> newContainer [
	^ newContainer
]

{ #category : #accessing }
DBE2EntityMove >> newContainer: anObject [
	newContainer := anObject
]

{ #category : #recommandations }
DBE2EntityMove >> recommandationsForColumnOn: operatorsStream [
	self incomingReferencesForColumn
		do: [ :ref |
			operatorsStream nextPut: (DBE2MoveReferenceSource reference: ref newSourceContainer: self newContainer) ]
]

{ #category : #recommandations }
DBE2EntityMove >> recommandationsForNotNullConstraintOn: operatorsStream [
	self flag: #TODO
]

{ #category : #recommandations }
DBE2EntityMove >> recommandationsForTableOn: operatorsStream [
	self incomingReferences do: [ :reference |
		reference qualifiedReference ifNotNil: [ :qualifiedReference |
			qualifiedReference references
				detect: [ :ref | ref to class = self newContainer class ]
				ifFound: [ :ref |
					operatorsStream nextPut: (DBE2ChangeTarget reference: ref newTargetName: self newContainer name) ] ] ].
		
	self flag: #TODO; halt. "What about entities that were in the same old namespace? the qualified name was maybe not used..."
]

{ #category : #recommandations }
DBE2EntityMove >> recommandationsForViewOn: operatorsStream [
	self flag: #TODO
]
