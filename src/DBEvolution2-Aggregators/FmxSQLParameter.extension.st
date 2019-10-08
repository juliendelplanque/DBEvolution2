Extension { #name : #FmxSQLParameter }

{ #category : #'*DBEvolution2-Aggregators' }
FmxSQLParameter >> aggregateEntityRename: anEntityRename for: aCreateStoredProcedure [
	aCreateStoredProcedure parameters
		at: (aCreateStoredProcedure parameters indexOf: self name)
		put: anEntityRename newName
]

{ #category : #'*DBEvolution2-Aggregators' }
FmxSQLParameter >> concernsStoredProcedure [
	^ true
]
