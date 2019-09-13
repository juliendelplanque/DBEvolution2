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

{ #category : #'as yet unclassified' }
DBE2ChangeTarget >> gtSourceCodeIn: composite [
	<gtInspectorPresentationOrder: -1>
	^ composite text
		title: 'Preview';
		display: [ self reference sourceAnchor ];
		format: [ :t | 
			[
				|text|
				text := (self reference sourceAnchor entity sourceCodeAsText copyFrom: 1 to: self reference sourceAnchor end) , self newTargetName , 
					(self reference sourceAnchor entity sourceCodeAsText copyFrom: self reference sourceAnchor end + 1 to: self reference sourceAnchor entity sourceCodeAsText size).
				text
					addAttribute: TextEmphasis struckOut from: self reference sourceAnchor start to: self reference sourceAnchor end;
					addAttribute: TextEmphasis bold from: self reference sourceAnchor start to: self reference sourceAnchor end;
					addAttribute: (TextColor color: Color red) from: self reference sourceAnchor start to: self reference sourceAnchor end;
					addAttribute: TextEmphasis bold from: self reference sourceAnchor end + 1 to: self reference sourceAnchor end + self newTargetName size;
					addAttribute: (TextColor color: Color green) from: self reference sourceAnchor end + 1 to: self reference sourceAnchor end + self newTargetName size.
			
			] on: FmxSQLNoSourceAnchor do: [ 'No source anchor' asText ] ];
		withLineNumbers: true;
		yourself
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
DBE2ChangeTarget >> recommandationsForTriggerStoredProcedureOn: operatorsStream [ 
	"Do nothing on purpose, once the change target operator has been applied, the code will be fixed."
]
