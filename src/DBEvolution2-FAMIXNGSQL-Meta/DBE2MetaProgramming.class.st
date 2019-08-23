Class {
	#name : #DBE2MetaProgramming,
	#superclass : #Object,
	#category : #'DBEvolution2-FAMIXNGSQL-Meta'
}

{ #category : #'as yet unclassified' }
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
				installOn: DBE2EntityOperator ]
]

{ #category : #'as yet unclassified' }
DBE2MetaProgramming class >> recommandationsForClassMethodTemplate [
	^ (PCGMethodNode
		selector: (#class asPCGTemplateParameter => [ :c | (#recommandationsFor , (c name allButFirst: 'FmxSQL' size)) asMutator ])
		arguments: { #class asPCGTemplateParameter => [ :c | ('a',(c name allButFirst: 'FmxSQL' size)) asSymbol asPCGArgument ] })
			beReturnedSubclassResponsibility.
]

{ #category : #'as yet unclassified' }
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
