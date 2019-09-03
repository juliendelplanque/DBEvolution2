Class {
	#name : #DBE2DDLRemoveNotNullConstraint,
	#superclass : #DBE2DDL,
	#instVars : [
		'tableName',
		'columnName'
	],
	#category : #'DBEvolution2-DDL'
}

{ #category : #accessing }
DBE2DDLRemoveNotNullConstraint >> columnName [
	^ columnName
]

{ #category : #accessing }
DBE2DDLRemoveNotNullConstraint >> columnName: anObject [
	columnName := anObject
]

{ #category : #template }
DBE2DDLRemoveNotNullConstraint >> queriesTemplate [
	^ 'ALTER TABLE "{tableName}" ALTER COLUMN "{columnName}" DROP NOT NULL;'
]

{ #category : #accessing }
DBE2DDLRemoveNotNullConstraint >> tableName [
	^ tableName
]

{ #category : #accessing }
DBE2DDLRemoveNotNullConstraint >> tableName: anObject [
	tableName := anObject
]
