Class {
	#name : #BaselineOfDBEvolution2,
	#superclass : #BaselineOf,
	#category : #BaselineOfDBEvolution2
}

{ #category : #baselines }
BaselineOfDBEvolution2 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec
				package: 'DBEvolution2'.
				
			spec baseline: 'TypedSlot' with: [ 
				spec repository: 'github://juliendelplanque/TypedSlot/src' ]
		]
]
