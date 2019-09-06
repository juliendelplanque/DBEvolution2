Class {
	#name : #DBE2ReferenceRemove,
	#superclass : #DBE2ReferenceOperator,
	#category : #'DBEvolution2-Core'
}

{ #category : #visiting }
DBE2ReferenceRemove >> acceptVisitor: anOperatorVisitor [
	<generated>
	^ anOperatorVisitor visitReferenceRemove: self
]

{ #category : #recommandations }
DBE2ReferenceRemove >> recommandationsForForeignKeyConstraintOn: operatorsStream [ 
	operatorsStream
		nextPut: (DBE2EntityRemove entity: self sourceEntity)
]

{ #category : #recommandations }
DBE2ReferenceRemove >> recommandationsForPrimaryKeyConstraintOn: operatorsStream [
	operatorsStream
		nextPut: (DBE2EntityRemove entity: self sourceEntity)
]
