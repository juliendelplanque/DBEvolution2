Extension { #name : #FmxSQLStoredProcedure }

{ #category : #'*DBEvolution2-Aggregators' }
FmxSQLStoredProcedure >> aggregateEntityRename: anEntityRename forStoredProcedure: aCreateStoredProcedure [
	aCreateStoredProcedure storedProcedureName: anEntityRename newName
]

{ #category : #'*DBEvolution2-Aggregators' }
FmxSQLStoredProcedure >> concernsStoredProcedure [
	^ true
]

{ #category : #'*DBEvolution2-Aggregators' }
FmxSQLStoredProcedure >> storedProcedureConcerned [
	^ self
]
