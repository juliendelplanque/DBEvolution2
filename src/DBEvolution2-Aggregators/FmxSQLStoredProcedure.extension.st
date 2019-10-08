Extension { #name : #FmxSQLStoredProcedure }

{ #category : #'*DBEvolution2-Aggregators' }
FmxSQLStoredProcedure >> aggregateEntityRename: anEntityRename for: aCreateStoredProcedure [
	aCreateStoredProcedure storedProcedureName: anEntityRename newName
]

{ #category : #'*DBEvolution2-Aggregators' }
FmxSQLStoredProcedure >> concernsStoredProcedure [
	^ true
]
