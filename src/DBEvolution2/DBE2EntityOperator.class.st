Class {
	#name : #DBE2EntityOperator,
	#superclass : #DBE2Operator,
	#instVars : [
		'#entity interface: #(#incomingReferences #recommandationsFor: )'
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
