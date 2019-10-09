Class {
	#name : #DBE2ModifyStoredProcedure,
	#superclass : #Object,
	#instVars : [
		'storedProcedure',
		'bodySourceCode',
		'storedProcedureName',
		'returnType',
		'parametersTypes',
		'parameters'
	],
	#category : #'DBEvolution2-Aggregators'
}

{ #category : #'instance creation' }
DBE2ModifyStoredProcedure class >> storedProcedure: storedProcedure [
	^ self new
		storedProcedure: storedProcedure;
		yourself
]

{ #category : #comparing }
DBE2ModifyStoredProcedure >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ self bodySourceCode = anObject bodySourceCode
		and: [ self parameters = anObject parameters
				and: [ self parametersTypes = anObject parametersTypes
						and: [ self returnType = anObject returnType
								and: [ self storedProcedure = anObject storedProcedure
										and: [ self storedProcedureName = anObject storedProcedureName ] ] ] ] ]
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> bodySourceCode [
	^ bodySourceCode
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> bodySourceCode: anObject [
	bodySourceCode := anObject
]

{ #category : #testing }
DBE2ModifyStoredProcedure >> concernsView [
	^ false
]

{ #category : #comparing }
DBE2ModifyStoredProcedure >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ bodySourceCode hash
		bitXor:
			(parameters hash
				bitXor:
					(parametersTypes hash
						bitXor:
							(returnType hash
								bitXor: (storedProcedure hash bitXor: storedProcedureName hash))))
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> parameters [
	^ parameters ifNil: [ parameters := self storedProcedure parameters collect: #name ]
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> parameters: anObject [
	parameters := anObject
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> parametersTypes [
	^ parametersTypes ifNil: [ parametersTypes := self storedProcedure parameters collect: [ :p | p type name ] ]
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> parametersTypes: anObject [
	parametersTypes := anObject
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> returnType [
	^ returnType ifNil: [ returnType := self storedProcedure returnType name ]
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> returnType: anObject [
	returnType := anObject
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> storedProcedure [
	^ storedProcedure
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> storedProcedure: anObject [
	storedProcedure := anObject
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> storedProcedureName [
	^ storedProcedureName ifNil: [ returnType := self storedProcedure name ]
]

{ #category : #accessing }
DBE2ModifyStoredProcedure >> storedProcedureName: anObject [
	storedProcedureName := anObject
]
