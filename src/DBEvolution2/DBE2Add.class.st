Class {
	#name : #DBE2Add,
	#superclass : #DBE2EntityOperator,
	#instVars : [
		'container'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #accessing }
DBE2Add >> container [
	^ container
]

{ #category : #accessing }
DBE2Add >> container: anObject [
	container := anObject
]

{ #category : #recommandations }
DBE2Add >> recommandationsForColumn: aColumn on: operatorsStream [
	self flag: #TODO. "Inheritance is not managed yet. Need to think if important or not."
	self flag: #TODO. "The way wildcard references are modelled in the meta-model is probably not optimal to do this task."
	self container 
]
