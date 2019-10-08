Extension { #name : #DBE2EntityRename }

{ #category : #'*DBEvolution2-Aggregators' }
DBE2EntityRename >> beAggregatedForStoredProcedure: aCreateStoredProcedure [
	self entity aggregateEntityRename: self for: aCreateStoredProcedure
]
