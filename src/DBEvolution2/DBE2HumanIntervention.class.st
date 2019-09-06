Class {
	#name : #DBE2HumanIntervention,
	#superclass : #DBE2EntityOperator,
	#category : #'DBEvolution2-Core'
}

{ #category : #visiting }
DBE2HumanIntervention >> acceptVisitor: anOperatorVisitor [
	<generated>
	^ anOperatorVisitor visitHumanIntervention: self
]

{ #category : #accessing }
DBE2HumanIntervention >> recommandations [
	"We consider that once the human modified the source code manually, no more operators are needed.
	"
	^ #()
]
