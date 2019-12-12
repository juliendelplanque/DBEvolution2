"
Adding an #entity is defined as adding it as children of #container.
"
Class {
	#name : #DBE2EntityAdd,
	#superclass : #DBE2DelegatingRecommandations,
	#instVars : [
		'container'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #visiting }
DBE2EntityAdd >> acceptVisitor: anOperatorVisitor [
	<generated>
	^ anOperatorVisitor visitEntityAdd: self
]

{ #category : #converting }
DBE2EntityAdd >> asAddNamespaceDDL [
	^ DBE2DDLAddNamespace new
		namespaceName: self entity name;
		yourself
]

{ #category : #accessing }
DBE2EntityAdd >> container [
	^ container
]

{ #category : #accessing }
DBE2EntityAdd >> container: anObject [
	container := anObject
]

{ #category : #recommandations }
DBE2EntityAdd >> recommandationsForColumnOn: operatorsStream [
	self flag: #TODO. "Inheritance is not managed yet. Need to think if important or not."
	self flag: #TODO. "The way wildcard references are modelled in the meta-model is probably not optimal to do this task."
	self container 
]

{ #category : #recommandations }
DBE2EntityAdd >> recommandationsForNamespaceOn: operatorsStream [
	"Adding a namespace has no impact.
	 No recommandations needs to be generated.
	"
]
