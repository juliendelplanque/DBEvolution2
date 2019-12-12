Extension { #name : #FmxSQLNamespace }

{ #category : #'*DBEvolution2-DDL' }
FmxSQLNamespace >> ddlForOperator: aDBE2DelegatingRecommandations [
	^ aDBE2DelegatingRecommandations asAddNamespaceDDL
]
