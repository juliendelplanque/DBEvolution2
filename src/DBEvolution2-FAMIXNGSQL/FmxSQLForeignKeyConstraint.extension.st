Extension { #name : #FmxSQLForeignKeyConstraint }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLForeignKeyConstraint >> recommandationsFor: anEntityOperator [
	<generated>
	^ anEntityOperator recommandationsForForeignKeyConstraint: self
]
