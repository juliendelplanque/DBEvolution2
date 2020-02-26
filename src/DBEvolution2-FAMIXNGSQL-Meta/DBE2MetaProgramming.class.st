Class {
	#name : #DBE2MetaProgramming,
	#superclass : #Object,
	#category : #'DBEvolution2-FAMIXNGSQL-Meta'
}

{ #category : #accessing }
DBE2MetaProgramming class >> classesForEntityOperatorGeneration [
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

{ #category : #accessing }
DBE2MetaProgramming class >> classesForReferenceOperatorGeneration [
	^ (FmxSQLClause allSubclasses select: [ :c | c subclasses isEmpty ]) ,
		(FmxSQLConstraint allSubclasses select: [ :c | c subclasses isEmpty ])
]

{ #category : #metaprogramming }
DBE2MetaProgramming class >> generateEntityOperatorAndEntityRecommandationMethods [
	| template templateForOperator |
	template := self recommandationsForMethodTemplate.
	templateForOperator := self recommandationsForClassMethodTemplate.
	self classesForEntityOperatorGeneration
		do: [ :class | 
			(template substituteParametersWith: {(#class -> class)})
				installOn: class.
			(templateForOperator substituteParametersWith: {(#class -> class)})
				installOn: DBE2DelegatingRecommandations.
			(self recommandationsForClassMethodOnTemplate
				substituteParametersWith: {(#class -> class)})
				installOn: DBE2DelegatingRecommandations. ]
]

{ #category : #metaprogramming }
DBE2MetaProgramming class >> generateOperatorAndEntityIncomingReferencesMethods [
	| template templateForOperator |
	template := self incomingReferencesForMethodTemplate .
	templateForOperator := self incomingReferencesForClassMethodTemplate.
	self classesForEntityOperatorGeneration
		do: [ :class | 
			(template substituteParametersWith: {(#class -> class)})
				installOn: class.
			(templateForOperator substituteParametersWith: {(#class -> class)})
				installOn: DBE2DelegatingRecommandations ]
]

{ #category : #metaprogramming }
DBE2MetaProgramming class >> generateReferenceOperatorAndEntityRecommandationMethods [
	<script>
	| template templateForOperator |
	template := self recommandationsForMethodTemplate.
	templateForOperator := self recommandationsForClassMethodTemplate.
	self classesForReferenceOperatorGeneration
		do: [ :class | 
			(template substituteParametersWith: {(#class -> class)})
				installOn: class.
			(templateForOperator substituteParametersWith: {(#class -> class)})
				installOn: DBE2ReferenceOperator.
			(self recommandationsForClassMethodOnTemplate
				substituteParametersWith: {(#class -> class)})
				installOn: DBE2ReferenceOperator ]
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
	selector: #recommandationsFor:on:
	arguments: {#anEntityOperator asPCGArgument. #operatorsStream asPCGArgument})
	bodyBlock: [ :body | 
		body << (#anEntityOperator asPCGArgument
					receiveMessage: (#class asPCGTemplateParameter => [ :c | (#recommandationsFor , (c name allButFirst: 'FmxSQL' size) , #'On:') asSymbol ]) with: #operatorsStream asPCGArgument) returnIt ];
	protocol: #'*DBEvolution2-FAMIXNGSQL';
	yourself
]
