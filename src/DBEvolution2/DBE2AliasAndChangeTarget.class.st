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

{ #category : #errors }
DBE2AliasAndChangeTarget >> errorCanNotBeAppliedForThisEntity [
	self
		error:
			'This operator can not be applied on a reference held by this kind of entity.'
]

{ #category : #printing }
DBE2AliasAndChangeTarget >> innerPrintOn: aStream [
	aStream print: self sourceAnchor extractString.
	aStream nextPutAll: ' -> '.
	aStream nextPut: $'.
	aStream nextPutAll: self newTargetName.
	aStream nextPutAll: ' AS '.
	aStream nextPutAll: self sourceAnchor extractString.
	aStream nextPut: $'.
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
DBE2AliasAndChangeTarget >> recommandationsForExceptClauseOn: operatorsStream [
	self errorCanNotBeAppliedForThisEntity
]

{ #category : #recommandations }
DBE2AliasAndChangeTarget >> recommandationsForForeignKeyConstraintOn: operatorsStream [
	self errorCanNotBeAppliedForThisEntity
]

{ #category : #recommandations }
DBE2AliasAndChangeTarget >> recommandationsForSelectClauseOn: operatorsStream [ 
	"There is not recommandation to create since this operator has no impact."
]

{ #category : #recommandations }
DBE2AliasAndChangeTarget >> recommandationsForUsingClauseOn: operatorsStream [
	self errorCanNotBeAppliedForThisEntity
]

{ #category : #recommandations }
DBE2AliasAndChangeTarget >> recommandationsForValuesClauseOn: operatorsStream [
	self errorCanNotBeAppliedForThisEntity
]

{ #category : #recommandations }
DBE2AliasAndChangeTarget >> recommandationsForWhereClauseOn: operatorsStream [
	self errorCanNotBeAppliedForThisEntity
]

{ #category : #recommandations }
DBE2AliasAndChangeTarget >> recommandationsForWithClauseOn: operatorsStream [
	self errorCanNotBeAppliedForThisEntity
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
