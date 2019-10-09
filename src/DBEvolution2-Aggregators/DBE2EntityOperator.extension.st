Extension { #name : #DBE2EntityOperator }

{ #category : #'*DBEvolution2-Aggregators' }
DBE2EntityOperator >> concernsStoredProcedure [
	^ self entity concernsStoredProcedure
]

{ #category : #'*DBEvolution2-Aggregators' }
DBE2EntityOperator >> concernsView [
	^ self entity concernsView
]

{ #category : #'*DBEvolution2-Aggregators' }
DBE2EntityOperator >> storedProcedureConcerned [
	^ self entity storedProcedureConcerned
]

{ #category : #'*DBEvolution2-Aggregators' }
DBE2EntityOperator >> viewConcerned [
	^ self entity viewConcerned
]
