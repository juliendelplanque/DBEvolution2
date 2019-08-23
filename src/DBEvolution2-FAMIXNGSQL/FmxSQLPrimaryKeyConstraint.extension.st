Extension { #name : #FmxSQLPrimaryKeyConstraint }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLPrimaryKeyConstraint >> recommandationsFor: anEntityOperator [
	<generated>
	^ anEntityOperator recommandationsForPrimaryKeyConstraint: self
]
