Extension { #name : #FmxSQLLocalVariable }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLLocalVariable >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForLocalVariable
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLLocalVariable >> recommandationsFor: anEntityOperator [
	<generated>
	^ anEntityOperator recommandationsForLocalVariable: self
]
