Class {
	#name : #DBE2EntityOperator,
	#superclass : #DBE2Operator,
	#instVars : [
		'#entity interface: #(#incomingReferences )'
	],
	#category : #DBEvolution2
}

{ #category : #accessing }
DBE2EntityOperator >> entity [
	^ entity
]

{ #category : #accessing }
DBE2EntityOperator >> entity: anObject [
	entity := anObject
]
