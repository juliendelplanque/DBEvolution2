Extension { #name : #FmxSQLLocalVariable }

{ #category : #'*DBEvolution2-Aggregators' }
FmxSQLLocalVariable >> aggregateEntityRename: anEntityRename for: aCreateStoredProcedure [
	"Does nothing on purpose."
	self flag: #TODO. "Check if should do something or not?"
]

{ #category : #'*DBEvolution2-Aggregators' }
FmxSQLLocalVariable >> concernsStoredProcedure [
	^ true
]
