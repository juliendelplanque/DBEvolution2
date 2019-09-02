Extension { #name : #FmxSQLConstraint }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLConstraint >> incomingReferences [
	^ self outgoingColumnReferences flatCollect: [ :ref | 
		ref column incomingReferences ]
]
