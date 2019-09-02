Class {
	#name : #DBE2ReferenceRemove,
	#superclass : #DBE2ReferenceOperator,
	#category : #'DBEvolution2-Core'
}

{ #category : #recommandations }
DBE2ReferenceRemove >> recommandationsForForeignKeyConstraintOn: operatorsStream [ 
	self shouldBeImplemented.
]

{ #category : #recommandations }
DBE2ReferenceRemove >> recommandationsForPrimaryKeyConstraintOn: operatorsStream [
	operatorsStream
		nextPut: (DBE2EntityRemove entity: self sourceEntity)
]
