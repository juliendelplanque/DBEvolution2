Extension { #name : #FmxSQLPrimaryKeyConstraint }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLPrimaryKeyConstraint >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForPrimaryKeyConstraint
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLPrimaryKeyConstraint >> recommandationsFor: anEntityOperator [
	<generated>
	^ anEntityOperator recommandationsForPrimaryKeyConstraint
]
