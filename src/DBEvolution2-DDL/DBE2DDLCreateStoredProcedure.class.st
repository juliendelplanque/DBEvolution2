Class {
	#name : #DBE2DDLCreateStoredProcedure,
	#superclass : #DBE2DDL,
	#instVars : [
		'storedProcedureName',
		'argumentsString',
		'returnTypeName',
		'sourceCode'
	],
	#category : #'DBEvolution2-DDL'
}

{ #category : #accessing }
DBE2DDLCreateStoredProcedure >> argumentsString [
	^ argumentsString
]

{ #category : #accessing }
DBE2DDLCreateStoredProcedure >> argumentsString: anObject [
	argumentsString := anObject
]

{ #category : #template }
DBE2DDLCreateStoredProcedure >> queriesTemplate [
	^ 'CREATE FUNCTION "{storedProcedureName}"({argumentsString}) RETURNS {returnTypeName} AS $${sourceCode}$$ LANGUAGE plpgsql;'
]

{ #category : #accessing }
DBE2DDLCreateStoredProcedure >> returnTypeName [
	^ returnTypeName
]

{ #category : #accessing }
DBE2DDLCreateStoredProcedure >> returnTypeName: anObject [
	returnTypeName := anObject
]

{ #category : #accessing }
DBE2DDLCreateStoredProcedure >> sourceCode [
	^ sourceCode
]

{ #category : #accessing }
DBE2DDLCreateStoredProcedure >> sourceCode: anObject [
	sourceCode := anObject
]

{ #category : #accessing }
DBE2DDLCreateStoredProcedure >> storedProcedureName [
	^ storedProcedureName
]

{ #category : #accessing }
DBE2DDLCreateStoredProcedure >> storedProcedureName: anObject [
	storedProcedureName := anObject
]
