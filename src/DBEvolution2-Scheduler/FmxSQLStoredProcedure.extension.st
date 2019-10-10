Extension { #name : #FmxSQLStoredProcedure }

{ #category : #'*DBEvolution2-Scheduler' }
FmxSQLStoredProcedure >> identityModifyOperator [
	"Returns a Modify operator that will allow to recreate the view identically."
	^ DBE2ModifyStoredProcedure storedProcedure: self
]
