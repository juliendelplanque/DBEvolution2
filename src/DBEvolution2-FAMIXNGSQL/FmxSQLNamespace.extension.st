Extension { #name : #FmxSQLNamespace }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLNamespace >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForNamespace
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLNamespace >> recommandationsFor: anEntityOperator [
	<generated>
	^ anEntityOperator recommandationsForNamespace: self
]
