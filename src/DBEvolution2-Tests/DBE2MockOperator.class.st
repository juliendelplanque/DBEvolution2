Class {
	#name : #DBE2MockOperator,
	#superclass : #DBE2Operator,
	#instVars : [
		'recommandations'
	],
	#category : #'DBEvolution2-Tests-Mock'
}

{ #category : #visiting }
DBE2MockOperator >> acceptVisitor: anOperatorVisitor [
	^ anOperatorVisitor visitMockOperator: self
]

{ #category : #initialization }
DBE2MockOperator >> initialize [
	super initialize.
	self recommandations: #()
]

{ #category : #printing }
DBE2MockOperator >> printOn: aStream [
	super printOn: aStream.
	aStream nextPut: $(.
	self hash printOn: aStream.
	aStream nextPut: $)
]

{ #category : #accessing }
DBE2MockOperator >> recommandations [
	^ recommandations
]

{ #category : #accessing }
DBE2MockOperator >> recommandations: anObject [
	recommandations := anObject
]
