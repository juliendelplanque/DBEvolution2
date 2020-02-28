Class {
	#name : #DBE2ModifyTrigger,
	#superclass : #Object,
	#instVars : [
		'trigger',
		'triggerName',
		'whenName',
		'tableName',
		'storedProcedureName',
		'firingActionName'
	],
	#category : #'DBEvolution2-Aggregators'
}

{ #category : #'instance creation' }
DBE2ModifyTrigger class >> trigger: trigger [
	<generated>
	^ self new
		trigger: trigger;
		yourself
]

{ #category : #converting }
DBE2ModifyTrigger >> asCreateDDL [
	^ DBE2DDLAddTrigger
		triggerName: self triggerName
		whenName: self whenName
		firingActionName: self firingActionName
		tableName: self tableName
		storedProcedureName: self storedProcedureName
]

{ #category : #converting }
DBE2ModifyTrigger >> asRemoveDDL [
	^ DBE2DDLRemoveTrigger triggerName: self triggerName tableName: self tableName
]

{ #category : #accessing }
DBE2ModifyTrigger >> entity [
	^ self trigger
]

{ #category : #accessing }
DBE2ModifyTrigger >> firingActionName [
	^ firingActionName ifNil: [ firingActionName := self trigger firingAction ]
]

{ #category : #accessing }
DBE2ModifyTrigger >> firingActionName: anObject [
	firingActionName := anObject
]

{ #category : #accessing }
DBE2ModifyTrigger >> storedProcedureName [
	^ storedProcedureName ifNil: [ storedProcedureName := self trigger storedProcedure name ]
]

{ #category : #accessing }
DBE2ModifyTrigger >> storedProcedureName: anObject [
	storedProcedureName := anObject
]

{ #category : #accessing }
DBE2ModifyTrigger >> tableName [
	^ tableName ifNil: [ tableName := self trigger table name ]
]

{ #category : #accessing }
DBE2ModifyTrigger >> tableName: anObject [
	tableName := anObject
]

{ #category : #accessing }
DBE2ModifyTrigger >> trigger [
	^ trigger
]

{ #category : #accessing }
DBE2ModifyTrigger >> trigger: anObject [
	trigger := anObject
]

{ #category : #accessing }
DBE2ModifyTrigger >> triggerName [
	^ triggerName ifNil: [ triggerName := self trigger name ]
]

{ #category : #accessing }
DBE2ModifyTrigger >> triggerName: anObject [
	triggerName := anObject
]

{ #category : #accessing }
DBE2ModifyTrigger >> whenName [
	^ whenName ifNil: [ whenName := self trigger when ]
]

{ #category : #accessing }
DBE2ModifyTrigger >> whenName: anObject [
	whenName := anObject
]
