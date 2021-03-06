Extension { #name : #DBE2Operator }

{ #category : #'*DBEvolution2-GTInspectorExtensions' }
DBE2Operator >> gtRecommandationsIn: composite [
	<gtInspectorPresentationOrder: 0>
	^ composite fastTable
		title: 'Recommandations';
		display: [ self recommandations ];
		enableElementIndex;
		wantsAutomaticRefresh: true;
		column: 'Index' evaluated: [ :value :index | index asString ] width: 50;
		column: 'Entity' evaluated: [ :value | GTObjectPrinter asTruncatedTextFrom: value ] width: 400;
		column: 'Requires human intervention' evaluated: [ :value | GTObjectPrinter asTruncatedTextFrom: value hasChoiceToMake ];
		yourself
]
