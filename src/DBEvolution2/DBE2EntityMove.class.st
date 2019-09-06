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

{ #category : #visiting }
DBE2EntityMove >> acceptVisitor: anOperatorVisitor [
	<generated>
	^ anOperatorVisitor visitEntityMove: self
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
DBE2EntityMove >> recommandationsForTableOn: operatorsStream [
	self incomingReferences do: [ :reference |
		self halt ]
]
