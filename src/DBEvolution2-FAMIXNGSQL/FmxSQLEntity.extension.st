Extension { #name : #FmxSQLEntity }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLEntity >> incomingReferences [
	^ self queryAllIncoming collect: [ :reference |
		DBE2FmxSQLReference wrap: reference ]
]
