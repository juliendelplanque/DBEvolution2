Extension { #name : #DBE2DelegatingRecommandations }

{ #category : #'*DBEvolution2-DDL' }
DBE2DelegatingRecommandations >> asDDL [
	^ self entity ddlForOperator: self
]
