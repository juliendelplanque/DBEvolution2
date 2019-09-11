Class {
	#name : #DBE2ChangeTarget,
	#superclass : #DBE2ReferenceOperator,
	#instVars : [
		'newTargetName'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #'instance creation' }
DBE2ChangeTarget class >> reference: reference newTargetName: newTargetName [
	^ self new
		reference: reference;
		newTargetName: newTargetName;
		yourself
]

{ #category : #visiting }
DBE2ChangeTarget >> acceptVisitor: anOperatorVisitor [
	<generated>
	^ anOperatorVisitor visitChangeTarget: self
]

{ #category : #testing }
DBE2ChangeTarget >> isChangeTarget [
	^ true
]

{ #category : #accessing }
DBE2ChangeTarget >> newTargetName [
	^ newTargetName
]

{ #category : #accessing }
DBE2ChangeTarget >> newTargetName: anObject [
	newTargetName := anObject
]
