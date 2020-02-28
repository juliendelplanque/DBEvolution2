Extension { #name : #DBE2DelegatingRecommandations }

{ #category : #'*DBEvolution2-DDL' }
DBE2DelegatingRecommandations >> asDDL [
	^ self entity ddlForOperator: self
]

{ #category : #'*DBEvolution2-DDL' }
DBE2DelegatingRecommandations >> ddlForColumn: aColumn [
	^ self subclassResponsibility
]

{ #category : #'*DBEvolution2-DDL' }
DBE2DelegatingRecommandations >> ddlForNamespace: aNamespace [
	^ self subclassResponsibility
]
