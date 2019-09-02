Class {
	#name : #DBE2DelegatingRecommandations,
	#superclass : #DBE2EntityOperator,
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
	<generated>
	^ self subclassResponsibility
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
	^ self entity recommandationsFor: self
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForCheckConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForCheckConstraintOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForCheckConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForColumn [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForColumnOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForColumnOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForForeignKeyConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForForeignKeyConstraintOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForForeignKeyConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForForeignTable [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForForeignTableOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForForeignTableOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForLocalVariable [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForLocalVariableOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForLocalVariableOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForNamespace [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForNamespaceOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForNamespaceOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForNotNullConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForNotNullConstraintOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForNotNullConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForParameter [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForParameterOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForParameterOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForPrimaryKeyConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForPrimaryKeyConstraintOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForPrimaryKeyConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForStoredProcedure [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForStoredProcedureOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForStoredProcedureOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTable [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTableOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTableOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTrigger [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTriggerOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTriggerOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTriggerStoredProcedure [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTriggerStoredProcedureOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTriggerStoredProcedureOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForType [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTypeOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTypeOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForUniqueConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForUniqueConstraintOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForUniqueConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForView [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForViewOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForViewOn: operatorsStream [
	<generated>
	self subclassResponsibility
]
