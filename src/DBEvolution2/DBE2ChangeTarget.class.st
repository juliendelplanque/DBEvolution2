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

{ #category : #printing }
DBE2ChangeTarget >> innerPrintOn: aStream [
	aStream print: self substringToRewrite.
	aStream nextPutAll: ' -> '.
	aStream print: self newTargetName
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

{ #category : #recommandations }
DBE2ChangeTarget >> recommandationsForGroupByClauseOn: operatorsStream [ 
	"Do nothing on purpose, once the change target operator has been applied, the code will be fixed."
]

{ #category : #recommandations }
DBE2ChangeTarget >> recommandationsForSelectClauseOn: operatorsStream [ 
	self reference belongsToGroup
		ifNotNil: [ ^ self ].
	
	"If the reference does not belong to a reference group and is in a SELECT clause, it means there are two possiblities:
		- either the user decide to alias the rewritten reference with the old name. That way, users of the SELECT query are not impacted by the change.
		- or the user decide to rewrite the reference and discard the old name. In that case, the users of the SELECT query need to be updated to use the new name.
	"
	self halt.
	operatorsStream nextPut: (DBE2ChoiceOperator possibleRecommandations: { 
		self flag: #TODO. "Create alias operator."
		 })
]

{ #category : #recommandations }
DBE2ChangeTarget >> recommandationsForTriggerStoredProcedureOn: operatorsStream [ 
	"Do nothing on purpose, once the change target operator has been applied, the code will be fixed."
]

{ #category : #accessing }
DBE2ChangeTarget >> sourceCodeChangeAsText [
	| entitySourceCode text |
	entitySourceCode := self sourceAnchor entity sourceCodeAsText.
	text := (entitySourceCode copyFrom: 1 to: self sourceAnchorEnd) ,
		self newTargetName ,
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
			to: self sourceAnchorEnd + self newTargetName size;
		addAttribute: (TextColor color: Color green)
			from: self sourceAnchorEnd + 1
			to: self sourceAnchorEnd + self newTargetName size.
	^ text
]
