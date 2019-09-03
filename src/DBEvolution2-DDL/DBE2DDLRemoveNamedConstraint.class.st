Class {
	#name : #DBE2DDLRemoveNamedConstraint,
	#superclass : #DBE2DDL,
	#instVars : [
		'tableName',
		'constraintName'
	],
	#category : #'DBEvolution2-DDL'
}

{ #category : #accessing }
DBE2DDLRemoveNamedConstraint >> constraintName [
	^ constraintName
]

{ #category : #accessing }
DBE2DDLRemoveNamedConstraint >> constraintName: anObject [
	constraintName := anObject
]

{ #category : #template }
DBE2DDLRemoveNamedConstraint >> queriesTemplate [
	^ 'ALTER TABLE "{tableName}" DROP CONSTRAINT "{constraintName}";'
]

{ #category : #accessing }
DBE2DDLRemoveNamedConstraint >> tableName [
	^ tableName
]

{ #category : #accessing }
DBE2DDLRemoveNamedConstraint >> tableName: anObject [
	tableName := anObject
]
