Class {
	#name : #DBE2ChoiceRequired,
	#superclass : #Error,
	#instVars : [
		'operator'
	],
	#category : #'DBEvolution2-Errors'
}

{ #category : #'instance creation' }
DBE2ChoiceRequired class >> signalForOperator: operator [
	^ self new
		operator: operator;
		signal
]

{ #category : #accessing }
DBE2ChoiceRequired >> operator [
	^ operator
]

{ #category : #accessing }
DBE2ChoiceRequired >> operator: anObject [
	operator := anObject
]
