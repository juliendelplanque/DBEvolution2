Extension { #name : #FmxSQLFromClause }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLFromClause >> recommandationsFor: anEntityOperator on: operatorsStream [
	<generated>
	^ anEntityOperator recommandationsForFromClauseOn: operatorsStream
]
