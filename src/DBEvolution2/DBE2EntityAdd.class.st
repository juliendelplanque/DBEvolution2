Class {
	#name : #DBE2EntityAdd,
	#superclass : #DBE2DelegatingRecommandations,
	#instVars : [
		'container'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #accessing }
DBE2EntityAdd >> container [
	^ container
]

{ #category : #accessing }
DBE2EntityAdd >> container: anObject [
	container := anObject
]

{ #category : #recommandations }
DBE2EntityAdd >> recommandationsForColumnOn: operatorsStream [
	self flag: #TODO. "Inheritance is not managed yet. Need to think if important or not."
	self flag: #TODO. "The way wildcard references are modelled in the meta-model is probably not optimal to do this task."
	self container 
]
