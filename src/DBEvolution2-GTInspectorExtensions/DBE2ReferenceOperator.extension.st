Extension { #name : #DBE2ReferenceOperator }

{ #category : #'*DBEvolution2-GTInspectorExtensions' }
DBE2ReferenceOperator >> gtPreviewIn: composite [
	<gtInspectorPresentationOrder: -1>
	^ composite text
		title: 'Preview';
		display: [ self reference ];
		format: [ :t | 
			[
				self sourceCodeChangeAsText
			] on: FmxSQLNoSourceAnchor do: [ 'No source anchor' asText ] ];
		withLineNumbers: true;
		yourself
]
