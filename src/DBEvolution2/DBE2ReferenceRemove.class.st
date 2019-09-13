Class {
	#name : #DBE2ReferenceRemove,
	#superclass : #DBE2ReferenceOperator,
	#category : #'DBEvolution2-Core'
}

{ #category : #visiting }
DBE2ReferenceRemove >> acceptVisitor: anOperatorVisitor [
	<generated>
	^ anOperatorVisitor visitReferenceRemove: self
]

{ #category : #recommandations }
DBE2ReferenceRemove >> recommandationsForForeignKeyConstraintOn: operatorsStream [ 
	operatorsStream
		nextPut: (DBE2EntityRemove entity: self sourceEntity)
]

{ #category : #recommandations }
DBE2ReferenceRemove >> recommandationsForPrimaryKeyConstraintOn: operatorsStream [
	operatorsStream
		nextPut: (DBE2EntityRemove entity: self sourceEntity)
]

{ #category : #accessing }
DBE2ReferenceRemove >> sourceCodeChangeAsText [
	| entitySourceCode |
	entitySourceCode := self sourceAnchor entity sourceCodeAsText.
	entitySourceCode
		addAttribute: TextEmphasis struckOut
			from: self sourceAnchor start
			to: self sourceAnchorEnd;
		addAttribute: TextEmphasis bold
			from: self sourceAnchor start
			to: self sourceAnchorEnd;
		addAttribute: (TextColor color: Color red)
			from: self sourceAnchor start
			to: self sourceAnchorEnd..
	^ entitySourceCode
]
