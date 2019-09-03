Extension { #name : #FmxSQLForeignTable }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLForeignTable >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForForeignTable
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLForeignTable >> recommandationsFor: anEntityOperator on: operatorsStream [
	<generated>
	^ anEntityOperator recommandationsForForeignTableOn: operatorsStream
]
