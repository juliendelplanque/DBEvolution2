Extension { #name : #FmxSQLParameter }

{ #category : #'*DBEvolution2-Aggregators' }
FmxSQLParameter >> aggregateEntityRename: anEntityRename forStoredProcedure: aCreateStoredProcedure [
	aCreateStoredProcedure parameters
		at: (aCreateStoredProcedure parameters indexOf: self name)
		put: anEntityRename newName
]

{ #category : #'*DBEvolution2-Aggregators' }
FmxSQLParameter >> concernsStoredProcedure [
	^ true
]

{ #category : #'*DBEvolution2-Aggregators' }
FmxSQLParameter >> storedProcedureConcerned [
	^ self parentBehaviouralEntity
]
