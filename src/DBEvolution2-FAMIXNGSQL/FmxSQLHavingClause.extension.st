Extension { #name : #FmxSQLHavingClause }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLHavingClause >> recommandationsFor: anEntityOperator on: operatorsStream [
	<generated>
	^ anEntityOperator recommandationsForHavingClauseOn: operatorsStream
]
