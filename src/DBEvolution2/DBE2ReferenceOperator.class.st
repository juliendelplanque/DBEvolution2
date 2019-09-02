Class {
	#name : #DBE2ReferenceOperator,
	#superclass : #DBE2Operator,
	#instVars : [
		'#reference interface: #(#source #target )'
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
	^ self reference from recommandationsFor: self
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForCheckConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForCheckConstraintOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForCheckConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForColumn [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForColumnOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForColumnOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForForeignKeyConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForForeignKeyConstraintOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForForeignKeyConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForForeignTable [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForForeignTableOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForForeignTableOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForLocalVariable [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForLocalVariableOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForLocalVariableOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForNamespace [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForNamespaceOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForNamespaceOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForNotNullConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForNotNullConstraintOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForNotNullConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForParameter [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForParameterOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForParameterOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForPrimaryKeyConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForPrimaryKeyConstraintOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForPrimaryKeyConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForStoredProcedure [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForStoredProcedureOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForStoredProcedureOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTable [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTableOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTableOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTrigger [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTriggerOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTriggerOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTriggerStoredProcedure [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTriggerStoredProcedureOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTriggerStoredProcedureOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForType [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTypeOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTypeOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForUniqueConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForUniqueConstraintOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForUniqueConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForView [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForViewOn: operatorsStream ]
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
