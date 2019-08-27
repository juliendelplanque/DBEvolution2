Class {
	#name : #DBE2DoNothing,
	#superclass : #DBE2EntityOperator,
	#category : #'DBEvolution2-Core'
}

{ #category : #accessing }
DBE2DoNothing >> recommandations [
	"This object is an implementation of the null-object design-pattern.
	 Thus, an empty array is returned.
	"
	^ #()
]
