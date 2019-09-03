Class {
	#name : #DBE2DDLRemoveStoredProcedure,
	#superclass : #DBE2DDL,
	#instVars : [
		'storedProcedureName',
		'argumentsString'
	],
	#category : #'DBEvolution2-DDL'
}

{ #category : #accessing }
DBE2DDLRemoveStoredProcedure >> argumentsString [
	^ argumentsString
]

{ #category : #accessing }
DBE2DDLRemoveStoredProcedure >> argumentsString: anObject [
	argumentsString := anObject
]

{ #category : #template }
DBE2DDLRemoveStoredProcedure >> queriesTemplate [
	^ 'DROP FUNCTION "{storedProcedureName}"({argumentsString}) RESTRICT;'
]

{ #category : #accessing }
DBE2DDLRemoveStoredProcedure >> storedProcedureName [
	^ storedProcedureName
]

{ #category : #accessing }
DBE2DDLRemoveStoredProcedure >> storedProcedureName: anObject [
	storedProcedureName := anObject
]
