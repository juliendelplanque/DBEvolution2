Extension { #name : #FmxSQLView }

{ #category : #'*DBEvolution2-Scheduler' }
FmxSQLView >> identityModifyOperator [
	"Returns a Modify operator that will allow to recreate the view identically."
	^ DBE2ModifyView view: self
]
