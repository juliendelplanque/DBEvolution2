Extension { #name : #FmxSQLType }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLType >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForType
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLType >> recommandationsFor: anEntityOperator on: operatorsStream [
	<generated>
	^ anEntityOperator recommandationsForTypeOn: operatorsStream
]
