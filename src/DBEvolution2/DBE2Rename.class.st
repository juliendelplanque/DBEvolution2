Class {
	#name : #DBE2Rename,
	#superclass : #DBE2EntityOperator,
	#instVars : [
		'newName'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #accessing }
DBE2Rename >> newName [
	^ newName
]

{ #category : #accessing }
DBE2Rename >> newName: anObject [
	newName := anObject
]

{ #category : #recommandations }
DBE2Rename >> recommandationsForColumn: aColumn on: operatorsStream [
	^ aColumn incomingReferences
		do: [ :reference | 
			operatorsStream
				nextPut: (DBE2ChangeTarget reference: reference newTargetName: self newName) ]
]
