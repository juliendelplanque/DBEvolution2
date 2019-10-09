"
I am a temporary operator used during the aggregation of reference operators.

I summarize an arbitrary number of changes to reference in the code source as a single source code modification for the entity.
"
Class {
	#name : #DBE2ModifySourceCode,
	#superclass : #Object,
	#instVars : [
		'entity',
		'newSourceCode'
	],
	#category : #'DBEvolution2-Aggregators'
}

{ #category : #aggregating }
DBE2ModifySourceCode >> beAggregatedForStoredProcedure: aStoredProcedure [
	aStoredProcedure bodySourceCode: self newSourceCode
]

{ #category : #aggregating }
DBE2ModifySourceCode >> beAggregatedForView: aModifyView [
	aModifyView queryString: self newSourceCode
]

{ #category : #testing }
DBE2ModifySourceCode >> concernsStoredProcedure [
	^ self entity concernsStoredProcedure
]

{ #category : #testing }
DBE2ModifySourceCode >> concernsView [
	^ self entity concernsView
]

{ #category : #accessing }
DBE2ModifySourceCode >> entity [
	^ entity
]

{ #category : #accessing }
DBE2ModifySourceCode >> entity: anObject [
	entity := anObject
]

{ #category : #accessing }
DBE2ModifySourceCode >> newSourceCode [
	^ newSourceCode
]

{ #category : #accessing }
DBE2ModifySourceCode >> newSourceCode: anObject [
	newSourceCode := anObject
]

{ #category : #accessing }
DBE2ModifySourceCode >> storedProcedureConcerned [
	^ self entity storedProcedureConcerned
]

{ #category : #accessing }
DBE2ModifySourceCode >> viewConcerned [
	^ self entity viewConcerned
]
