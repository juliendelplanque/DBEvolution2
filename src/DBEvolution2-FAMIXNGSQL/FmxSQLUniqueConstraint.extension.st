Extension { #name : #FmxSQLUniqueConstraint }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLUniqueConstraint >> recommandationsFor: anEntityOperator [
	<generated>
	^ anEntityOperator recommandationsForUniqueConstraint: self
]
