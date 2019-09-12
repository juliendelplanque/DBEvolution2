Extension { #name : #FmxSQLSelectClause }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLSelectClause >> recommandationsFor: anEntityOperator on: operatorsStream [
	<generated>
	^ anEntityOperator recommandationsForSelectClauseOn: operatorsStream
]
