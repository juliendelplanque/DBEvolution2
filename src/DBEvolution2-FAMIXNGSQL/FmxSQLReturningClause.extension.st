Extension { #name : #FmxSQLReturningClause }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLReturningClause >> recommandationsFor: anEntityOperator on: operatorsStream [
	<generated>
	^ anEntityOperator
		recommandationsForReturningClauseOn: operatorsStream
]
