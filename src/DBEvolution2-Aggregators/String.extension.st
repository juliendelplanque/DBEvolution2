Extension { #name : #String }

{ #category : #'*DBEvolution2-Aggregators' }
String >> applyChangeTargets: changeTargets [
	| orderedReferenceRenamings lastIndex |
	"To be sure the order stays the same in this method."
	orderedReferenceRenamings := changeTargets asOrderedCollection sorted: [ :a :b | a start < b start ].
	lastIndex := 1.
	^ String streamContents: [ :stream |
		orderedReferenceRenamings do: [ :changeTarget |
			(changeTarget start > lastIndex)
				ifTrue: [ 
					stream << (self copyFrom: lastIndex to: changeTarget start - 1).
					lastIndex := changeTarget start ].
			changeTarget start = lastIndex
				ifTrue: [ stream << changeTarget newTargetName ].
			lastIndex := changeTarget stop + 1 ].
		lastIndex < self size
			ifTrue: [ stream << (self copyFrom: lastIndex to: self size) ] ]
]
