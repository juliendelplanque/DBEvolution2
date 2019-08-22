Class {
	#name : #DBE2Operator,
	#superclass : #Object,
	#category : #'DBEvolution2-Core'
}

{ #category : #accessing }
DBE2Operator >> recommandations [
	"Returns operators that are recommanded to apply the current operator correctly."
	^ self subclassResponsibility
]
