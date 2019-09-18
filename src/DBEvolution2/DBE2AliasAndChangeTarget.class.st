Class {
	#name : #DBE2AliasAndChangeTarget,
	#superclass : #DBE2ReferenceOperator,
	#instVars : [
		'newTargetName'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #'instance creation' }
DBE2AliasAndChangeTarget class >> reference: reference newTargetName: newTargetName [
	^ self new
		reference: reference;
		newTargetName: newTargetName;
		yourself
]

{ #category : #visiting }
DBE2AliasAndChangeTarget >> acceptVisitor: aDBE2OperatorVisitor [
	<generated>
	^ aDBE2OperatorVisitor visitDBE2AliasAndChangeTarget: self
]

{ #category : #accessing }
DBE2AliasAndChangeTarget >> newTargetName [
	^ newTargetName
]

{ #category : #accessing }
DBE2AliasAndChangeTarget >> newTargetName: anObject [
	newTargetName := anObject
]
