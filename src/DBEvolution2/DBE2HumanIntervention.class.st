"
I am an operator that mark that the process expects a human to perform a change on the database.
"
Class {
	#name : #DBE2HumanIntervention,
	#superclass : #DBE2EntityOperator,
	#instVars : [
		'startPosition',
		'endPosition'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #'instance creation' }
DBE2HumanIntervention class >> entity: entity startPosition: startPosition endPosition: endPosition [
	^ (self entity: entity)
		startPosition: startPosition;
		endPosition: endPosition;
		yourself
]

{ #category : #visiting }
DBE2HumanIntervention >> acceptVisitor: anOperatorVisitor [
	<generated>
	^ anOperatorVisitor visitHumanIntervention: self
]

{ #category : #accessing }
DBE2HumanIntervention >> endPosition [
	^ endPosition ifNil: [ 
		endPosition := self entity source size ]
]

{ #category : #accessing }
DBE2HumanIntervention >> endPosition: anObject [
	endPosition := anObject
]

{ #category : #'as yet unclassified' }
DBE2HumanIntervention >> gtPreviewIn: composite [
	<gtInspectorPresentationOrder: -1>
	^ composite text
		title: 'Source code to modify';
		display: [ self entity ];
		format: [ :t | 
			[
				self entity sourceCodeAsText
			] on: FmxSQLNoSourceAnchor do: [ 'No source anchor' asText ] ];
		initialize: [ :presentation | 
			presentation selectionInterval: (self startPosition to: self endPosition) ];
		withLineNumbers: true;
		yourself
]

{ #category : #testing }
DBE2HumanIntervention >> hasChoiceToMake [
	^ true
]

{ #category : #accessing }
DBE2HumanIntervention >> recommandations [
	"We consider that once the human modified the source code manually, no more operators are needed.
	"
	^ #()
]

{ #category : #accessing }
DBE2HumanIntervention >> startPosition [
	^ startPosition ifNil: [ 
		startPosition := 1 ]
]

{ #category : #accessing }
DBE2HumanIntervention >> startPosition: anObject [
	startPosition := anObject
]
