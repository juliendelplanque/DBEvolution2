Extension { #name : #FmxSQLCheckConstraint }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLCheckConstraint >> recommandationsFor: anEntityOperator [
	<generated>
	^ anEntityOperator recommandationsForCheckConstraint: self
]
