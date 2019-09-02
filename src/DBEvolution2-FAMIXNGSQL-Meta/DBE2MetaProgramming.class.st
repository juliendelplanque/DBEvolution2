Class {
	#name : #DBE2MetaProgramming,
	#superclass : #Object,
	#category : #'DBEvolution2-FAMIXNGSQL-Meta'
}

{ #category : #accessing }
DBE2MetaProgramming class >> classesForGeneration [
	^ {FmxSQLTable.
	FmxSQLColumn.
	FmxSQLCheckConstraint.
	FmxSQLForeignKeyConstraint.
	FmxSQLNotNullConstraint.
	FmxSQLPrimaryKeyConstraint.
	FmxSQLUniqueConstraint.
	FmxSQLNamespace.
	FmxSQLForeignTable.
	FmxSQLType.
	FmxSQLTrigger.
	FmxSQLView.
	FmxSQLStoredProcedure.
	FmxSQLTriggerStoredProcedure.
	FmxSQLParameter.
	FmxSQLLocalVariable}
]

{ #category : #metaprogramming }
DBE2MetaProgramming class >> generateOperatorAndEntityIncomingReferencesMethods [
	| template templateForOperator |
	template := self incomingReferencesForMethodTemplate .
	templateForOperator := self incomingReferencesForClassMethodTemplate.
	self classesForGeneration
		do: [ :class | 
			(template substituteParametersWith: {(#class -> class)})
				installOn: class.
			(templateForOperator substituteParametersWith: {(#class -> class)})
				installOn: DBE2DelegatingRecommandations ]
]

{ #category : #metaprogramming }
DBE2MetaProgramming class >> generateOperatorAndEntityRecommandationMethods [
	| template templateForOperator |
	template := self recommandationsForMethodTemplate.
	templateForOperator := self recommandationsForClassMethodTemplate.
	self classesForGeneration
		do: [ :class | 
			(template substituteParametersWith: {(#class -> class)})
				installOn: class.
			(templateForOperator substituteParametersWith: {(#class -> class)})
				installOn: DBE2DelegatingRecommandations.
			(self recommandationsForClassMethodOnTemplate
				substituteParametersWith: {(#class -> class)})
				installOn: DBE2DelegatingRecommandations ]
]

{ #category : #templates }
DBE2MetaProgramming class >> incomingReferencesForClassMethodTemplate [
	^ (PCGMethodNode
		selector: (#class asPCGTemplateParameter => [ :c | (#incomingReferencesFor , (c name allButFirst: 'FmxSQL' size)) asSymbol ]))
		beReturnedSubclassResponsibility;
		protocol: 'references';
		yourself.
]

{ #category : #templates }
DBE2MetaProgramming class >> incomingReferencesForMethodTemplate [
	^ (PCGMethodNode
	selector: #incomingReferencesFor:
	arguments: {#anEntityOperator asPCGArgument})
	bodyBlock: [ :body | 
		body << (#anEntityOperator asPCGArgument
					receiveMessage: (#class asPCGTemplateParameter => [ :c | (#incomingReferencesFor , (c name allButFirst: 'FmxSQL' size)) asSymbol ])) returnIt ];
	protocol: #'*DBEvolution2-FAMIXNGSQL';
	yourself
]

{ #category : #templates }
DBE2MetaProgramming class >> recommandationsForClassMethodOnTemplate [
	^ (PCGMethodNode
		selector: (#class asPCGTemplateParameter => [ :c | ((#recommandationsFor , (c name allButFirst: 'FmxSQL' size)) , 'On:') asSymbol ])
		arguments: { 
			#operatorsStream asPCGArgument })
		beSubclassResponsibility;
		protocol: 'recommandations';
		yourself.
]

{ #category : #templates }
DBE2MetaProgramming class >> recommandationsForClassMethodTemplate [
	^ (PCGMethodNode
		selector: (#class asPCGTemplateParameter => [ :c | (#recommandationsFor , (c name allButFirst: 'FmxSQL' size)) ]))
		<< (Array asPCG
				receiveMessage: #streamContents: 
				with: ((PCGBlockNode arguments: { #operatorsStream asPCGArgument  })
							bodyBlock: [ :blockBody |
								blockBody << (#self asPCGNode receiveMessage: (#class asPCGTemplateParameter => [ :c | ((#recommandationsFor , (c name allButFirst: 'FmxSQL' size)) , 'On:') asSymbol ]) with: #operatorsStream asPCGArgument ) ])) returnIt;
		protocol: 'recommandations';
		yourself.
]

{ #category : #templates }
DBE2MetaProgramming class >> recommandationsForMethodTemplate [
	^ (PCGMethodNode
	selector: #recommandationsFor:
	arguments: {#anEntityOperator asPCGArgument})
	bodyBlock: [ :body | 
		body << (#anEntityOperator asPCGArgument
					receiveMessage: (#class asPCGTemplateParameter => [ :c | (#recommandationsFor , (c name allButFirst: 'FmxSQL' size)) asMutator ])
					with: #self asPCGNode) returnIt ];
	protocol: #'*DBEvolution2-FAMIXNGSQL';
	yourself
]
