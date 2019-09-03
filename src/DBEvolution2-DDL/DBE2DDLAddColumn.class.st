Class {
	#name : #DBE2DDLAddColumn,
	#superclass : #DBE2DDL,
	#instVars : [
		'targetTableName',
		'columnName',
		'columnTypeName'
	],
	#category : #'DBEvolution2-DDL'
}

{ #category : #accessing }
DBE2DDLAddColumn >> columnName [
	^ columnName
]

{ #category : #accessing }
DBE2DDLAddColumn >> columnName: anObject [
	columnName := anObject
]

{ #category : #accessing }
DBE2DDLAddColumn >> columnTypeName [
	^ columnTypeName
]

{ #category : #accessing }
DBE2DDLAddColumn >> columnTypeName: anObject [
	columnTypeName := anObject
]

{ #category : #template }
DBE2DDLAddColumn >> queriesTemplate [
	^ 'ALTER TABLE "{targetTableName}" ADD COLUMN "{columnName}" "{columnTypeName}";'
]

{ #category : #accessing }
DBE2DDLAddColumn >> targetTableName [
	^ targetTableName
]

{ #category : #accessing }
DBE2DDLAddColumn >> targetTableName: anObject [
	targetTableName := anObject
]
