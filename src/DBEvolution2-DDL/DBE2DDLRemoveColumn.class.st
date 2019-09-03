Class {
	#name : #DBE2DDLRemoveColumn,
	#superclass : #DBE2DDL,
	#instVars : [
		'tableName',
		'columnName'
	],
	#category : #'DBEvolution2-DDL'
}

{ #category : #accessing }
DBE2DDLRemoveColumn >> columnName [
	^ columnName
]

{ #category : #accessing }
DBE2DDLRemoveColumn >> columnName: anObject [
	columnName := anObject
]

{ #category : #template }
DBE2DDLRemoveColumn >> queriesTemplate [
	^ 'ALTER TABLE "{tableName}" DROP COLUMN "{columnName}";'
]

{ #category : #accessing }
DBE2DDLRemoveColumn >> tableName [
	^ tableName
]

{ #category : #accessing }
DBE2DDLRemoveColumn >> tableName: anObject [
	tableName := anObject
]
