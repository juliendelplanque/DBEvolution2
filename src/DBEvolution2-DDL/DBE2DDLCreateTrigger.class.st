Class {
	#name : #DBE2DDLCreateTrigger,
	#superclass : #DBE2DDL,
	#instVars : [
		'triggerName',
		'when',
		'firingAction',
		'tableName',
		'storedProcedureName'
	],
	#category : #'DBEvolution2-DDL'
}

{ #category : #accessing }
DBE2DDLCreateTrigger >> firingAction [
	^ firingAction
]

{ #category : #accessing }
DBE2DDLCreateTrigger >> firingAction: anObject [
	firingAction := anObject
]

{ #category : #template }
DBE2DDLCreateTrigger >> queriesTemplate [
	self flag: #TODO. "PROCEDURE should not be hard-coded."
	^ 'CREATE TRIGGER "{triggerName}" {when} {firingAction} ON "{tableName}" EXECUTE PROCEDURE "{storedProcedureName}"();'
]

{ #category : #accessing }
DBE2DDLCreateTrigger >> storedProcedureName [
	^ storedProcedureName
]

{ #category : #accessing }
DBE2DDLCreateTrigger >> storedProcedureName: anObject [
	storedProcedureName := anObject
]

{ #category : #accessing }
DBE2DDLCreateTrigger >> tableName [
	^ tableName
]

{ #category : #accessing }
DBE2DDLCreateTrigger >> tableName: anObject [
	tableName := anObject
]

{ #category : #accessing }
DBE2DDLCreateTrigger >> triggerName [
	^ triggerName
]

{ #category : #accessing }
DBE2DDLCreateTrigger >> triggerName: anObject [
	triggerName := anObject
]

{ #category : #accessing }
DBE2DDLCreateTrigger >> when [
	^ when
]

{ #category : #accessing }
DBE2DDLCreateTrigger >> when: anObject [
	when := anObject
]
