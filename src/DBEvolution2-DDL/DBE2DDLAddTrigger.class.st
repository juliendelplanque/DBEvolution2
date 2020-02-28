Class {
	#name : #DBE2DDLAddTrigger,
	#superclass : #DBE2DDL,
	#instVars : [
		'triggerName',
		'whenName',
		'tableName',
		'storedProcedureName',
		'firingActionName'
	],
	#category : #'DBEvolution2-DDL'
}

{ #category : #accessing }
DBE2DDLAddTrigger >> firingActionName [
	^ firingActionName
]

{ #category : #accessing }
DBE2DDLAddTrigger >> firingActionName: anObject [
	firingActionName := anObject
]

{ #category : #template }
DBE2DDLAddTrigger >> queriesTemplate [
	self flag: #TODO. "PROCEDURE should not be hard-coded."
	^ 'CREATE TRIGGER "{triggerName}" {whenName} {firingActionName} ON "{tableName}" EXECUTE PROCEDURE "{storedProcedureName}"();'
]

{ #category : #accessing }
DBE2DDLAddTrigger >> storedProcedureName [
	^ storedProcedureName
]

{ #category : #accessing }
DBE2DDLAddTrigger >> storedProcedureName: anObject [
	storedProcedureName := anObject
]

{ #category : #accessing }
DBE2DDLAddTrigger >> tableName [
	^ tableName
]

{ #category : #accessing }
DBE2DDLAddTrigger >> tableName: anObject [
	tableName := anObject
]

{ #category : #accessing }
DBE2DDLAddTrigger >> triggerName [
	^ triggerName
]

{ #category : #accessing }
DBE2DDLAddTrigger >> triggerName: anObject [
	triggerName := anObject
]

{ #category : #accessing }
DBE2DDLAddTrigger >> whenName [
	^ whenName
]

{ #category : #accessing }
DBE2DDLAddTrigger >> whenName: anObject [
	whenName := anObject
]
