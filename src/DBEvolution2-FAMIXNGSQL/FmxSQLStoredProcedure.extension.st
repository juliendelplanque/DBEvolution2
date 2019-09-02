Extension { #name : #FmxSQLStoredProcedure }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLStoredProcedure >> incomingReferences [
	^ self incomingInvocations collect: [ :reference |
		DBE2FmxSQLReference wrap: reference ]
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLStoredProcedure >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForStoredProcedure
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLStoredProcedure >> recommandationsFor: anEntityOperator [
	<generated>
	^ anEntityOperator recommandationsForStoredProcedure: self
]
