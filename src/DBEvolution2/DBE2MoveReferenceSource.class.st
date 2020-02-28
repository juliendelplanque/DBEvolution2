Class {
	#name : #DBE2MoveReferenceSource,
	#superclass : #DBE2ReferenceOperator,
	#instVars : [
		'newSourceContainer'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #'instance creation' }
DBE2MoveReferenceSource class >> reference: reference newSourceContainer: newSourceContainer [
	^ (self reference: reference)
		newSourceContainer: newSourceContainer;
		yourself
]

{ #category : #visiting }
DBE2MoveReferenceSource >> acceptVisitor: anOperatorVisitor [
	<generated>
	^ anOperatorVisitor visitMoveReferenceSource: self
]

{ #category : #printing }
DBE2MoveReferenceSource >> innerPrintOn: aStream [
	aStream print: self sourceEntity.
	aStream nextPutAll: ''' to '''.
	aStream nextPutAll: self newSourceContainer name.
	aStream nextPut: $'
]

{ #category : #recommandations }
DBE2MoveReferenceSource >> moveSourceEntityToNewSourceContainerOn: operatorsStream [
	operatorsStream nextPut: (DBE2EntityMove entity: self sourceEntity newContainer: self newSourceContainer)
]

{ #category : #accessing }
DBE2MoveReferenceSource >> newSourceContainer [
	^ newSourceContainer
]

{ #category : #accessing }
DBE2MoveReferenceSource >> newSourceContainer: anObject [
	newSourceContainer := anObject
]

{ #category : #recommandations }
DBE2MoveReferenceSource >> recommandationsForCheckConstraintOn: operatorsStream [
	self sourceEntity outgoingColumnReferences size > 1
		ifTrue: [ DBE2CanNotApplyOperator
				signalForOperator: self
				rational: 'Can not move a CHECK constraint concerning more than one column.' ].
	self moveSourceEntityToNewSourceContainerOn: operatorsStream
]

{ #category : #recommandations }
DBE2MoveReferenceSource >> recommandationsForForeignKeyConstraintOn: operatorsStream [
	self flag: #TODO
]

{ #category : #recommandations }
DBE2MoveReferenceSource >> recommandationsForFromClauseOn: operatorsStream [ 
	operatorsStream nextPut: (DBE2HumanIntervention entity: self sourceEntity)
]

{ #category : #recommandations }
DBE2MoveReferenceSource >> recommandationsForNotNullConstraintOn: operatorsStream [
	self moveSourceEntityToNewSourceContainerOn: operatorsStream
]

{ #category : #recommandations }
DBE2MoveReferenceSource >> recommandationsForPrimaryKeyConstraintOn: operatorsStream [
	DBE2CanNotApplyOperator signalForOperator: self rational: 'Can not move a primary key constraint.'
]

{ #category : #recommandations }
DBE2MoveReferenceSource >> recommandationsForSelectClauseOn: operatorsStream [
	operatorsStream nextPut: (DBE2HumanIntervention entity: self sourceEntity)
]

{ #category : #recommandations }
DBE2MoveReferenceSource >> recommandationsForUniqueConstraintOn: operatorsStream [
	self sourceEntity outgoingColumnReferences size > 1
		ifTrue: [ DBE2CanNotApplyOperator
				signalForOperator: self
				rational: 'Can not move a UNIQUE constraint concerning more than one column.' ].
	self moveSourceEntityToNewSourceContainerOn: operatorsStream
]

{ #category : #recommandations }
DBE2MoveReferenceSource >> recommandationsForWhereClauseOn: operatorsStream [
	operatorsStream nextPut: (DBE2HumanIntervention entity: self sourceEntity)
]
