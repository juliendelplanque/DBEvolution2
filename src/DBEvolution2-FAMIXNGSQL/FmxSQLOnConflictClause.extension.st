Extension { #name : #FmxSQLOnConflictClause }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLOnConflictClause >> recommandationsFor: anEntityOperator on: operatorsStream [
	<generated>
	^ anEntityOperator
		recommandationsForOnConflictClauseOn: operatorsStream
]
