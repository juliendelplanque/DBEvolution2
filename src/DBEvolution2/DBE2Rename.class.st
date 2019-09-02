Class {
	#name : #DBE2Rename,
	#superclass : #DBE2DelegatingRecommandations,
	#instVars : [
		'newName'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #references }
DBE2Rename >> incomingReferencesForColumn [
	^ super incomingReferencesForColumn
		reject:
			[ :columnReference | columnReference from isConstraint or: [ columnReference from isAlias ] ]
]

{ #category : #accessing }
DBE2Rename >> newName [
	^ newName
]

{ #category : #accessing }
DBE2Rename >> newName: anObject [
	newName := anObject
]

{ #category : #recommandations }
DBE2Rename >> recommandationsForColumnOn: operatorsStream [
	self incomingReferences
		do: [ :reference | 
			operatorsStream
				nextPut: (DBE2ChangeTarget reference: reference newTargetName: self newName) ]
]
