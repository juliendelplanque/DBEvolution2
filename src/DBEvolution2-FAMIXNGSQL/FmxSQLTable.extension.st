Extension { #name : #FmxSQLTable }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLTable >> recommandationsFor: anEntityOperator [
	<generated>
	^ anEntityOperator recommandationsForTable: self
]
