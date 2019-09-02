Extension { #name : #FmxSQLTriggerStoredProcedure }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLTriggerStoredProcedure >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForTriggerStoredProcedure
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLTriggerStoredProcedure >> recommandationsFor: anEntityOperator [
	<generated>
	^ anEntityOperator recommandationsForTriggerStoredProcedure: self
]
