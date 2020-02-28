Extension { #name : #DBE2Operator }

{ #category : #'*DBEvolution2-Scheduler' }
DBE2Operator >> aggregateAndSchedule [
	^ DBE2Scheduler schedule: (DBE2DecisionToAggregatedOperators aggregate: self) operators
]

{ #category : #'*DBEvolution2-Scheduler' }
DBE2Operator >> isModifyEntityOperator [
	^ false
]
