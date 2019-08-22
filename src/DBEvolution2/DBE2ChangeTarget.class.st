Class {
	#name : #DBE2ChangeTarget,
	#superclass : #DBE2ReferenceOperator,
	#category : #'DBEvolution2-Core'
}

{ #category : #accessing }
DBE2ChangeTarget >> recommandations [
	"Changing the target of a reference has no impact.
	 Thus, no recommandation is required.
	"
	^ #()
]
