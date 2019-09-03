Extension { #name : #FmxSQLForeignKeyConstraint }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLForeignKeyConstraint >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForForeignKeyConstraint
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLForeignKeyConstraint >> recommandationsFor: anEntityOperator on: operatorsStream [
	<generated>
	^ anEntityOperator
		recommandationsForForeignKeyConstraintOn: operatorsStream
]
