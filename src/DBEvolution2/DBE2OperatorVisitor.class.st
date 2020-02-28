Class {
	#name : #DBE2OperatorVisitor,
	#superclass : #Object,
	#category : #'DBEvolution2-Visitors'
}

{ #category : #visiting }
DBE2OperatorVisitor class >> visit: anOperator [
	^ self new visit: anOperator
]

{ #category : #visiting }
DBE2OperatorVisitor >> visit: anObject [
	<generated>
	^ anObject acceptVisitor: self
]

{ #category : #visiting }
DBE2OperatorVisitor >> visitChangeTarget: aChangeTarget [
	^ self visitOperator: aChangeTarget
]

{ #category : #visiting }
DBE2OperatorVisitor >> visitChoiceOperator: aChoiceOperator [
	^ self visitOperator: aChoiceOperator
]

{ #category : #visiting }
DBE2OperatorVisitor >> visitDBE2AliasAndChangeTarget: aDBE2AliasAndChangeTarget [
	<generated>
	^ self visitOperator: aDBE2AliasAndChangeTarget
]

{ #category : #visiting }
DBE2OperatorVisitor >> visitDoNothing: aDoNothing [
	^ self visitOperator: aDoNothing
]

{ #category : #visiting }
DBE2OperatorVisitor >> visitEntityAdd: anEntityAdd [
	^ self visitOperator: anEntityAdd
]

{ #category : #visiting }
DBE2OperatorVisitor >> visitEntityMove: anEntityMove [
	^ self visitOperator: anEntityMove
]

{ #category : #visiting }
DBE2OperatorVisitor >> visitEntityRemove: anEntityRemove [
	^ self visitOperator: anEntityRemove
]

{ #category : #visiting }
DBE2OperatorVisitor >> visitEntityRename: anEntityRename [
	^ self visitOperator: anEntityRename
]

{ #category : #visiting }
DBE2OperatorVisitor >> visitEntityRetype: anEntityRetype [
	^ self visitOperator: anEntityRetype
]

{ #category : #visiting }
DBE2OperatorVisitor >> visitHumanIntervention: aHumanIntervention [
	^ self visitOperator: aHumanIntervention
]

{ #category : #visiting }
DBE2OperatorVisitor >> visitMoveReferenceSource: aMoveReferenceSource [
	^ self visitOperator: aMoveReferenceSource
]

{ #category : #visiting }
DBE2OperatorVisitor >> visitOperator: anOperator [
	^ anOperator recommandations collect: [ :recommandation | self visit: recommandation ]
]

{ #category : #visiting }
DBE2OperatorVisitor >> visitReferenceRemove: aReferenceRemove [
	^ self visitOperator: aReferenceRemove
]
