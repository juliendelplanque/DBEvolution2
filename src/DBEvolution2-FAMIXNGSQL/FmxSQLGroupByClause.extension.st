Extension { #name : #FmxSQLGroupByClause }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLGroupByClause >> recommandationsFor: anEntityOperator on: operatorsStream [
	<generated>
	^ anEntityOperator recommandationsForGroupByClauseOn: operatorsStream
]
