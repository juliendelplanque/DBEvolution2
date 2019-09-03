Extension { #name : #FmxSQLTrigger }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLTrigger >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForTrigger
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLTrigger >> recommandationsFor: anEntityOperator on: operatorsStream [
	<generated>
	^ anEntityOperator recommandationsForTriggerOn: operatorsStream
]
