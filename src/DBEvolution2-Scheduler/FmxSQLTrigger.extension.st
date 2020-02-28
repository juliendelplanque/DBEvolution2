Extension { #name : #FmxSQLTrigger }

{ #category : #'*DBEvolution2-Scheduler' }
FmxSQLTrigger >> identityModifyOperator [
	^ DBE2ModifyTrigger trigger: self
]
