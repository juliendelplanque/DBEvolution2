Class {
	#name : #DBE2EntityOperator,
	#superclass : #DBE2Operator,
	#instVars : [
		'#entity interface: #(#incomingReferences #recommandationsFor: )'
	],
	#category : #'DBEvolution2-Core'
}

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

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForCheckConstraint: aCheckConstraint [
	<generated>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForColumn: aColumn [
	<generated>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForForeignKeyConstraint: aForeignKeyConstraint [
	<generated>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForForeignTable: aForeignTable [
	<generated>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForLocalVariable: aLocalVariable [
	<generated>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForNamespace: aNamespace [
	<generated>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForNotNullConstraint: aNotNullConstraint [
	<generated>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForParameter: aParameter [
	<generated>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForPrimaryKeyConstraint: aPrimaryKeyConstraint [
	<generated>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForStoredProcedure: aStoredProcedure [
	<generated>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForTable: aTable [
	<generated>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForTrigger: aTrigger [
	<generated>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForTriggerStoredProcedure: aTriggerStoredProcedure [
	<generated>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForType: aType [
	<generated>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForUniqueConstraint: aUniqueConstraint [
	<generated>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
DBE2EntityOperator >> recommandationsForView: aView [
	<generated>
	^ self subclassResponsibility
]
