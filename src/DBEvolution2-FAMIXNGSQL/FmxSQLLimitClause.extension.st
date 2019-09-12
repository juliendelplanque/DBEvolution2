Extension { #name : #FmxSQLLimitClause }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLLimitClause >> recommandationsFor: anEntityOperator on: operatorsStream [
	<generated>
	^ anEntityOperator recommandationsForLimitClauseOn: operatorsStream
]
