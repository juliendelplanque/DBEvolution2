Class {
	#name : #DBE2EntityOperator,
	#superclass : #DBE2Operator,
	#instVars : [
		'#entity interface: #(#incomingReferences #recommandationsFor: )'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #'instance creation' }
DBE2EntityOperator class >> entity: entity [
	^ self new
		entity: entity;
		yourself
]

{ #category : #accessing }
DBE2EntityOperator >> entity [
	^ entity
]

{ #category : #accessing }
DBE2EntityOperator >> entity: anObject [
	entity := anObject
]

{ #category : #accessing }
DBE2EntityOperator >> recommandations [
	^ self entity recommandationsFor: self
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForCheckConstraint: aCheckConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForCheckConstraint: aCheckConstraint
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForCheckConstraint: aCheckConstraint on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForColumn: aColumn [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForColumn: aColumn on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForColumn: aColumn on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForForeignKeyConstraint: aForeignKeyConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForForeignKeyConstraint: aForeignKeyConstraint
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForForeignKeyConstraint: aForeignKeyConstraint on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForForeignTable: aForeignTable [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForForeignTable: aForeignTable on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForForeignTable: aForeignTable on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForLocalVariable: aLocalVariable [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForLocalVariable: aLocalVariable
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForLocalVariable: aLocalVariable on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForNamespace: aNamespace [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForNamespace: aNamespace on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForNamespace: aNamespace on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForNotNullConstraint: aNotNullConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForNotNullConstraint: aNotNullConstraint
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForNotNullConstraint: aNotNullConstraint on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForParameter: aParameter [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForParameter: aParameter on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForParameter: aParameter on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForPrimaryKeyConstraint: aPrimaryKeyConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForPrimaryKeyConstraint: aPrimaryKeyConstraint
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForPrimaryKeyConstraint: aPrimaryKeyConstraint on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForStoredProcedure: aStoredProcedure [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForStoredProcedure: aStoredProcedure
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForStoredProcedure: aStoredProcedure on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForTable: aTable [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTable: aTable on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForTable: aTable on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForTrigger: aTrigger [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTrigger: aTrigger on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForTrigger: aTrigger on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForTriggerStoredProcedure: aTriggerStoredProcedure [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForTriggerStoredProcedure: aTriggerStoredProcedure
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForTriggerStoredProcedure: aTriggerStoredProcedure on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForType: aType [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForType: aType on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForType: aType on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForUniqueConstraint: aUniqueConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForUniqueConstraint: aUniqueConstraint
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForUniqueConstraint: aUniqueConstraint on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForView: aView [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForView: aView on: operatorsStream ]
]

{ #category : #recommandations }
DBE2EntityOperator >> recommandationsForView: aView on: operatorsStream [
	<generated>
	self subclassResponsibility
]
