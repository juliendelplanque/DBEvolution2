Extension { #name : #FmxSQLColumn }

{ #category : #'*DBEvolution2-DDL' }
FmxSQLColumn >> ddlForOperator: aDBE2DelegatingRecommandations [
	^ aDBE2DelegatingRecommandations ddlForColumn: self
]
