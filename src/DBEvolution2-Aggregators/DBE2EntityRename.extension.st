Extension { #name : #DBE2EntityRename }

{ #category : #'*DBEvolution2-Aggregators' }
DBE2EntityRename >> beAggregatedForStoredProcedure: aModifyStoredProcedure [
	self entity aggregateEntityRename: self forStoredProcedure: aModifyStoredProcedure
]

{ #category : #'*DBEvolution2-Aggregators' }
DBE2EntityRename >> beAggregatedForView: aModifyView [
	self entity aggregateEntityRename: self forView: aModifyView
]
