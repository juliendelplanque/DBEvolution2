Extension { #name : #FmxSQLJoinClause }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLJoinClause >> recommandationsFor: anEntityOperator on: operatorsStream [
	<generated>
	^ anEntityOperator recommandationsForJoinClauseOn: operatorsStream
]
