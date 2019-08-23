Extension { #name : #FmxSQLColumn }

{ #category : #'*DBEvolution2-FAMIXNGSQL' }
FmxSQLColumn >> recommandationsFor: anEntityOperator [
	<generated>
	^ anEntityOperator recommandationsForColumn: self
]
