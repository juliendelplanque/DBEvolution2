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

{ #category : #accessing }
DBE2EntityMove >> newContainer [
	^ newContainer
]

{ #category : #accessing }
DBE2EntityMove >> newContainer: anObject [
	newContainer := anObject
]
