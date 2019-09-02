Extension { #name : #FmxSQLNotNullConstraint }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLNotNullConstraint >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForNotNullConstraint
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLNotNullConstraint >> recommandationsFor: anEntityOperator [
	<generated>
	^ anEntityOperator recommandationsForNotNullConstraint: self
]
