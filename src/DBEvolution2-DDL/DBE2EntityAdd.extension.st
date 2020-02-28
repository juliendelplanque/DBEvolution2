Extension { #name : #DBE2EntityAdd }

{ #category : #'*DBEvolution2-DDL' }
DBE2EntityAdd >> asAddNamespaceDDL [
	^ DBE2DDLAddNamespace new
		namespaceName: self entity name;
		yourself
]

{ #category : #'*DBEvolution2-DDL' }
DBE2EntityAdd >> ddlForNamespace: aNamespace [
	^ self asAddNamespaceDDL
]
