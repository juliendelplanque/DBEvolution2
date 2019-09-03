Extension { #name : #FmxSQLParameter }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLParameter >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForParameter
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLParameter >> recommandationsFor: anEntityOperator on: operatorsStream [
	<generated>
	^ anEntityOperator recommandationsForParameterOn: operatorsStream
]
