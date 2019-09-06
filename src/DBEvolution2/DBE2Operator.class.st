Class {
	#name : #DBE2Operator,
	#superclass : #Object,
	#category : #'DBEvolution2-Core'
}

{ #category : #testing }
DBE2Operator >> hasChoiceToMake [
	"Returns true if the tree of recommandations contains a ChoiceOperator.
	 This means that some manual decisions have to be made.
	"
	^ DBE2HasChoiceVisitor hasChoice: self
]

{ #category : #accessing }
DBE2Operator >> recommandations [
	"Returns operators that are recommanded to apply the current operator correctly."
	^ self subclassResponsibility
]
