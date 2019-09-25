Class {
	#name : #DBE2EntityOperator,
	#superclass : #DBE2Operator,
	#instVars : [
		'#entity interface: #(#incomingReferencesFor: #recommandationsFor: )',
		'#isVirtual type: Boolean'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #accessing }
DBE2EntityOperator >> entity [
	^ entity
]

{ #category : #accessing }
DBE2EntityOperator >> entity: anObject [
	entity := anObject
]

{ #category : #initialization }
DBE2EntityOperator >> initialize [
	super initialize.
	self isVirtual: false.
]

{ #category : #accessing }
DBE2EntityOperator >> isVirtual [
	^ isVirtual
]

{ #category : #accessing }
DBE2EntityOperator >> isVirtual: anObject [
	isVirtual := anObject
]
