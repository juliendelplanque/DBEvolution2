Class {
	#name : #DBE2EntityRename,
	#superclass : #DBE2DelegatingRecommandations,
	#instVars : [
		'newName'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #references }
DBE2EntityRename >> incomingReferencesForColumn [
	^ super incomingReferencesForColumn
		reject:
			[ :columnReference | columnReference from isConstraint or: [ columnReference from isAlias ] ]
]

{ #category : #accessing }
DBE2EntityRename >> newName [
	^ newName
]

{ #category : #accessing }
DBE2EntityRename >> newName: anObject [
	newName := anObject
]

{ #category : #recommandations }
DBE2EntityRename >> recommandationsForColumnOn: operatorsStream [
	self incomingReferences
		do: [ :reference | 
			operatorsStream
				nextPut: (DBE2ChangeTarget reference: reference newTargetName: self newName) ]
]
