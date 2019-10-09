Extension { #name : #FmxSQLColumn }

{ #category : #'*DBEvolution2-Aggregators' }
FmxSQLColumn >> aggregateEntityRename: anEntityRename forView: aModifyView [
	"Do nothing on purpose."
	"The renaminf of view's column is just simulated. The real renaming occurs via the change in the query."
]

{ #category : #'*DBEvolution2-Aggregators' }
FmxSQLColumn >> concernsView [
	^ self columnsContainer isView
]

{ #category : #'*DBEvolution2-Aggregators' }
FmxSQLColumn >> viewConcerned [
	^ self columnsContainer
]
