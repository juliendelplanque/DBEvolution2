Class {
	#name : #DBE2DelegatingRecommandations,
	#superclass : #DBE2EntityOperator,
	#instVars : [
		'recommandations'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #'instance creation' }
DBE2DelegatingRecommandations class >> entity: entity [
	^ self new
		entity: entity;
		yourself
]

{ #category : #accessing }
DBE2DelegatingRecommandations >> incomingReferences [
	^ self entity incomingReferencesFor: self
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForCheckConstraint [
	<generated>
	^ self subclassResponsibility
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForColumn [
	^ self entity queryAllIncoming collect: [ :reference |
		DBE2FmxSQLReference wrap: reference ]
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForForeignKeyConstraint [
	<generated>
	^ self subclassResponsibility
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForForeignTable [
	<generated>
	^ self subclassResponsibility
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForLocalVariable [
	<generated>
	^ self subclassResponsibility
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForNamespace [
	<generated>
	^ self subclassResponsibility
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForNotNullConstraint [
	<generated>
	^ self subclassResponsibility
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForParameter [
	<generated>
	^ self subclassResponsibility
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForPrimaryKeyConstraint [
	<generated>
	^ self subclassResponsibility
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForStoredProcedure [
	<generated>
	^ self subclassResponsibility
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForTable [
	^ self entity queryAllIncoming collect: [ :reference |
		DBE2FmxSQLReference wrap: reference ]
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForTrigger [
	<generated>
	^ self subclassResponsibility
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForTriggerStoredProcedure [
	<generated>
	^ self subclassResponsibility
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForType [
	<generated>
	^ self subclassResponsibility
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForUniqueConstraint [
	<generated>
	^ self subclassResponsibility
]

{ #category : #references }
DBE2DelegatingRecommandations >> incomingReferencesForView [
	<generated>
	^ self subclassResponsibility
]

{ #category : #accessing }
DBE2DelegatingRecommandations >> recommandations [
	^ recommandations ifNil: [ recommandations := Array streamContents: [ :stream | self entity recommandationsFor: self on: stream ] ]
]

{ #category : #accessing }
DBE2DelegatingRecommandations >> recommandations: anObject [
	recommandations := anObject
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForCheckConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForColumnOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForForeignKeyConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForForeignTableOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForLocalVariableOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForNamespaceOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForNotNullConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForParameterOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForPrimaryKeyConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForStoredProcedureOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTableOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTriggerOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTriggerStoredProcedureOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTypeOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForUniqueConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForViewOn: operatorsStream [
	<generated>
	self subclassResponsibility
]
