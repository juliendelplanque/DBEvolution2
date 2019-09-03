Extension { #name : #FmxSQLUniqueConstraint }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLUniqueConstraint >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForUniqueConstraint
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLUniqueConstraint >> recommandationsFor: anEntityOperator on: operatorsStream [
	<generated>
	^ anEntityOperator
		recommandationsForUniqueConstraintOn: operatorsStream
]
