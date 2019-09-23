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

{ #category : #recommandations }
DBE2AliasAndChangeTarget >> recommandationsForSelectClauseOn: operatorsStream [ 
	"There is not recommandation to create since this operator has no impact."
]

{ #category : #accessing }
DBE2AliasAndChangeTarget >> sourceAnchor [
	^ self reference sourceAnchor
]

{ #category : #accessing }
DBE2AliasAndChangeTarget >> sourceCodeChangeAsText [
	| entitySourceCode text insertedText |
	entitySourceCode := self sourceAnchor entity sourceCodeAsText.
	insertedText := self newTargetName , ' AS ' , self reference sourceAnchor extractString.
	text := (entitySourceCode copyFrom: 1 to: self sourceAnchorEnd) ,
		insertedText ,
		(entitySourceCode
			copyFrom: self sourceAnchorEnd + 1
			to: entitySourceCode size).
	text
		addAttribute: TextEmphasis struckOut
			from: self sourceAnchor start
			to: self sourceAnchorEnd;
		addAttribute: TextEmphasis bold
			from: self sourceAnchor start
			to: self sourceAnchorEnd;
		addAttribute: (TextColor color: Color red)
			from: self sourceAnchor start
			to: self sourceAnchorEnd;
		addAttribute: TextEmphasis bold
			from: self sourceAnchorEnd + 1
			to: self sourceAnchorEnd + insertedText size;
		addAttribute: (TextColor color: Color green)
			from: self sourceAnchorEnd + 1
			to: self sourceAnchorEnd + insertedText size.
	^ text
]
