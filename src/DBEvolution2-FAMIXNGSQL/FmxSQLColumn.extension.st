Extension { #name : #FmxSQLColumn }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLColumn >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForColumn
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLColumn >> recommandationsFor: anEntityOperator [
	<generated>
	^ anEntityOperator recommandationsForColumn
]
