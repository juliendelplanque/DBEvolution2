Class {
	#name : #DBE2WildCardChangeTarget,
	#superclass : #DBE2ChangeTarget,
	#category : #'DBEvolution2-Core'
}

{ #category : #printing }
DBE2WildCardChangeTarget >> innerPrintOn: aStream [
	aStream print: self substringToRewrite
]

{ #category : #testing }
DBE2WildCardChangeTarget >> isVirtual [
	^ true
]
