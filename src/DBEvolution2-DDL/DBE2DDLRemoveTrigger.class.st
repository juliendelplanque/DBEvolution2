Class {
	#name : #DBE2DDLRemoveTrigger,
	#superclass : #DBE2DDL,
	#instVars : [
		'triggerName',
		'tableName'
	],
	#category : #'DBEvolution2-DDL'
}

{ #category : #'instance creation' }
DBE2DDLRemoveTrigger class >> triggerName: triggerName tableName: tableName [
	<generated>
	^ self new
		triggerName: triggerName;
		tableName: tableName;
		yourself
]

{ #category : #template }
DBE2DDLRemoveTrigger >> queriesTemplate [
	^ 'DROP TRIGGER "{triggerName}" ON "{tableName}" RESTRICT;'
]

{ #category : #accessing }
DBE2DDLRemoveTrigger >> tableName [
	^ tableName
]

{ #category : #accessing }
DBE2DDLRemoveTrigger >> tableName: anObject [
	tableName := anObject
]

{ #category : #accessing }
DBE2DDLRemoveTrigger >> triggerName [
	^ triggerName
]

{ #category : #accessing }
DBE2DDLRemoveTrigger >> triggerName: anObject [
	triggerName := anObject
]
