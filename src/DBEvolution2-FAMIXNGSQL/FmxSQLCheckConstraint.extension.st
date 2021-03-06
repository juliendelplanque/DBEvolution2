Extension { #name : #FmxSQLCheckConstraint }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLCheckConstraint >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForCheckConstraint
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLCheckConstraint >> recommandationsFor: anEntityOperator on: operatorsStream [
	<generated>
	^ anEntityOperator
		recommandationsForCheckConstraintOn: operatorsStream
]
