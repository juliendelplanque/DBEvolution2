Extension { #name : #FmxSQLView }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLView >> incomingReferences [
	^ (self queryLocalIncoming: FmxSQLViewReference) collect: [ :reference |
		DBE2FmxSQLReference wrap: reference ]
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLView >> incomingReferencesFor: anEntityOperator [
	<generated>
	^ anEntityOperator incomingReferencesForView
]

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLView >> recommandationsFor: anEntityOperator [
	<generated>
	^ anEntityOperator recommandationsForView: self
]
