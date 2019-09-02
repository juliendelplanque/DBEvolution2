Extension { #name : #FmxSQLTrigger }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLTrigger >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForTrigger
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLTrigger >> recommandationsFor: anEntityOperator [
	<generated>
	^ anEntityOperator recommandationsForTrigger: self
]
