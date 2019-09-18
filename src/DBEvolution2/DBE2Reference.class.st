Class {
	#name : #DBE2Reference,
	#superclass : #Object,
	#category : #'DBEvolution2-Model'
}

{ #category : #acessing }
DBE2Reference >> belongsToGroup [
	^ nil
]

{ #category : #accessing }
DBE2Reference >> from [
	^ self subclassResponsibility
]

{ #category : #testing }
DBE2Reference >> isColumnReference [
	^ self subclassResponsibility
]

{ #category : #accessing }
DBE2Reference >> sourceAnchor [
	^ self subclassResponsibility
]

{ #category : #accessing }
DBE2Reference >> to [
	^ self subclassResponsibility
]
