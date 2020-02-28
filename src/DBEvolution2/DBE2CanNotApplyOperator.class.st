Class {
	#name : #DBE2CanNotApplyOperator,
	#superclass : #Error,
	#instVars : [
		'operator',
		'rational'
	],
	#category : #'DBEvolution2-Errors'
}

{ #category : #'instance creation' }
DBE2CanNotApplyOperator class >> signalForOperator: operator rational: rational [
	<generated>
	^ self new
		operator: operator;
		rational: rational;
		signal
]

{ #category : #accessing }
DBE2CanNotApplyOperator >> operator [
	^ operator
]

{ #category : #accessing }
DBE2CanNotApplyOperator >> operator: anObject [
	operator := anObject
]

{ #category : #accessing }
DBE2CanNotApplyOperator >> rational [
	^ rational
]

{ #category : #accessing }
DBE2CanNotApplyOperator >> rational: anObject [
	rational := anObject
]
