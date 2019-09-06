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
				package: 'DBEvolution2' with: [ spec requires: #('TypedSlot') ];
				package: 'DBEvolution2-Tests' with: [ spec requires: #('DBEvolution2') ];
				package: 'DBEvolution2-DDL';
				package: 'DBEvolution2-DDL-Tests' with: [ spec requires: #('DBEvolution2-DDL') ];
				package: 'DBEvolution2-FAMIXNGSQL' with: [ spec requires: #('DBEvolution2') ];
				package: 'DBEvolution2-FAMIXNGSQL-Meta' with: [ spec requires: #('PharoCodeGenerator') ].
				
			spec baseline: 'TypedSlot' with: [ 
				spec repository: 'github://juliendelplanque/TypedSlot:v1.x.x/src' ].
			spec baseline: 'PharoCodeGenerator' with: [ 
				spec repository: 'github://juliendelplanque/PharoCodeGenerator/src' ]
		]
]
