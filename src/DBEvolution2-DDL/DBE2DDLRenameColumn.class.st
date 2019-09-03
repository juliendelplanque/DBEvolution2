Class {
	#name : #DBE2DDLRenameColumn,
	#superclass : #DBE2DDL,
	#instVars : [
		'tableName',
		'columnName',
		'newColumnName'
	],
	#category : #'DBEvolution2-DDL'
}

{ #category : #accessing }
DBE2DDLRenameColumn >> columnName [
	^ columnName
]

{ #category : #accessing }
DBE2DDLRenameColumn >> columnName: anObject [
	columnName := anObject
]

{ #category : #accessing }
DBE2DDLRenameColumn >> newColumnName [
	^ newColumnName
]

{ #category : #accessing }
DBE2DDLRenameColumn >> newColumnName: anObject [
	newColumnName := anObject
]

{ #category : #template }
DBE2DDLRenameColumn >> queriesTemplate [
	^ 'ALTER TABLE "{tableName}" RENAME COLUMN "{columnName}" TO "{newColumnName}";'
]

{ #category : #accessing }
DBE2DDLRenameColumn >> tableName [
	^ tableName
]

{ #category : #accessing }
DBE2DDLRenameColumn >> tableName: anObject [
	tableName := anObject
]
