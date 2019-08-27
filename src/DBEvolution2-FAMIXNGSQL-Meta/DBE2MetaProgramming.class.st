Class {
	#name : #DBE2MetaProgramming,
	#superclass : #Object,
	#category : #'DBEvolution2-FAMIXNGSQL-Meta'
}

{ #category : #metaprogramming }
DBE2MetaProgramming class >> generateOperatorAndEntityRecommandationMethods [
	| template templateForOperator |
	template := self recommandationsForMethodTemplate.
	templateForOperator := self recommandationsForClassMethodTemplate.
	{FmxSQLTable.
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
		do: [ :class | 
			(template substituteParametersWith: {(#class -> class)})
				installOn: class.
			(templateForOperator substituteParametersWith: {(#class -> class)})
				installOn: DBE2DelegatingRecommandations.
			(self recommandationsForClassMethodOnTemplate substituteParametersWith: {(#class -> class)})	
				installOn: DBE2DelegatingRecommandations ]
]

{ #category : #metaprogramming }
DBE2MetaProgramming class >> recommandationsForClassMethodOnTemplate [
	^ (PCGMethodNode
		selector: (#class asPCGTemplateParameter => [ :c | ((#recommandationsFor , (c name allButFirst: 'FmxSQL' size)) asMutator , 'on:') asSymbol ])
		arguments: { 
			#class asPCGTemplateParameter => [ :c | ('a',(c name allButFirst: 'FmxSQL' size)) asSymbol asPCGArgument ].
			#operatorsStream asPCGArgument })
		beSubclassResponsibility;
		protocol: 'recommandations';
		yourself.
]

{ #category : #metaprogramming }
DBE2MetaProgramming class >> recommandationsForClassMethodTemplate [
	| entityArgument |
	entityArgument := #class asPCGTemplateParameter => [ :c | ('a',(c name allButFirst: 'FmxSQL' size)) asSymbol asPCGArgument ].
	^ (PCGMethodNode
		selector: (#class asPCGTemplateParameter => [ :c | (#recommandationsFor , (c name allButFirst: 'FmxSQL' size)) asMutator ])
		arguments: { entityArgument })
		<< (Array asPCG
				receiveMessage: #streamContents: 
				with: ((PCGBlockNode arguments: { #operatorsStream asPCGArgument  })
							bodyBlock: [ :blockBody |
								blockBody << (#self asPCGNode receiveMessage: (#class asPCGTemplateParameter => [ :c | ((#recommandationsFor , (c name allButFirst: 'FmxSQL' size)) asMutator , 'on:') asSymbol ]) with: entityArgument with: #operatorsStream asPCGArgument ) ])) returnIt;
		protocol: 'recommandations';
		yourself.
]

{ #category : #metaprogramming }
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
