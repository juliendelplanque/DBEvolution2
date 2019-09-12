Class {
	#name : #DBE2ReferenceOperator,
	#superclass : #DBE2Operator,
	#instVars : [
		'#reference interface: #(#source #target )',
		'#recommandations'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #'instance creation' }
DBE2ReferenceOperator class >> reference: reference [
	^ self new
		reference: reference;
		yourself
]

{ #category : #accessing }
DBE2ReferenceOperator >> recommandations [
	^ recommandations ifNil: [ recommandations := Array streamContents: [ :stream | self reference from recommandationsFor: self on: stream ] ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForCheckConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForColumnOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForForeignKeyConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForForeignTableOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForLocalVariableOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForNamespaceOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForNotNullConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForParameterOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForPrimaryKeyConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForStoredProcedureOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTableOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTriggerOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTriggerStoredProcedureOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTypeOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForUniqueConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForViewOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #accessing }
DBE2ReferenceOperator >> reference [
	^ reference
]

{ #category : #accessing }
DBE2ReferenceOperator >> reference: anObject [
	reference := anObject
]

{ #category : #accessing }
DBE2ReferenceOperator >> sourceEntity [
	^ self reference from
]

{ #category : #accessing }
DBE2ReferenceOperator >> start [
	^ self reference start
]

{ #category : #accessing }
DBE2ReferenceOperator >> stop [
	^ self reference stop
]
