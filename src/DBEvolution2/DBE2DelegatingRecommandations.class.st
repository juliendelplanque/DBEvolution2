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
DBE2DelegatingRecommandations >> recommandations [
	^ self entity recommandationsFor: self
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForCheckConstraint: aCheckConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForCheckConstraint: aCheckConstraint
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForCheckConstraint: aCheckConstraint on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForColumn: aColumn [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForColumn: aColumn on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForColumn: aColumn on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForForeignKeyConstraint: aForeignKeyConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForForeignKeyConstraint: aForeignKeyConstraint
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForForeignKeyConstraint: aForeignKeyConstraint on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForForeignTable: aForeignTable [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForForeignTable: aForeignTable on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForForeignTable: aForeignTable on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForLocalVariable: aLocalVariable [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForLocalVariable: aLocalVariable
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForLocalVariable: aLocalVariable on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForNamespace: aNamespace [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForNamespace: aNamespace on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForNamespace: aNamespace on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForNotNullConstraint: aNotNullConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForNotNullConstraint: aNotNullConstraint
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForNotNullConstraint: aNotNullConstraint on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForParameter: aParameter [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForParameter: aParameter on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForParameter: aParameter on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForPrimaryKeyConstraint: aPrimaryKeyConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForPrimaryKeyConstraint: aPrimaryKeyConstraint
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForPrimaryKeyConstraint: aPrimaryKeyConstraint on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForStoredProcedure: aStoredProcedure [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForStoredProcedure: aStoredProcedure
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForStoredProcedure: aStoredProcedure on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTable: aTable [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTable: aTable on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTable: aTable on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTrigger: aTrigger [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTrigger: aTrigger on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTrigger: aTrigger on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTriggerStoredProcedure: aTriggerStoredProcedure [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForTriggerStoredProcedure: aTriggerStoredProcedure
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForTriggerStoredProcedure: aTriggerStoredProcedure on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForType: aType [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForType: aType on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForType: aType on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForUniqueConstraint: aUniqueConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | 
			self
				recommandationsForUniqueConstraint: aUniqueConstraint
				on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForUniqueConstraint: aUniqueConstraint on: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForView: aView [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForView: aView on: operatorsStream ]
]

{ #category : #recommandations }
DBE2DelegatingRecommandations >> recommandationsForView: aView on: operatorsStream [
	<generated>
	self subclassResponsibility
]
