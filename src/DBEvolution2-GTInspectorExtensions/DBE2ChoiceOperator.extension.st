Extension { #name : #DBE2ChoiceOperator }

{ #category : #'*DBEvolution2-GTInspectorExtensions' }
DBE2ChoiceOperator >> gtPossibilitiesIn: composite [
	<gtInspectorPresentationOrder: -1>
	^ composite fastTable
		title: 'Possible recommandations';
		display: [ self possibleRecommandations ];
		enableElementIndex;
		wantsAutomaticRefresh: true;
		column: 'Index' evaluated: [ :value :index | index asString ] width: 50;
		column: 'Entity' evaluated: [ :value | GTObjectPrinter asTruncatedTextFrom: value ];
		selectionAct: [ :glamourTable |
			self chosenRecommandation: glamourTable selection.
			composite pane update ]
			entitled: 'Choose this operator'
]

{ #category : #'*DBEvolution2-GTInspectorExtensions' }
DBE2ChoiceOperator >> gtRecommandationsIn: composite [
	self isChoiceMade ifFalse: [ 
		^ composite text
			title: 'Recommandations';
			display: [ 'Make your choice before accessing recommandations.'  ]  ].
	
	^ super gtRecommandationsIn: composite
]
