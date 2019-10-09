"
A DBE2DecisionToAggregatedOperatorsTest is a test class for testing the behavior of DBE2DecisionToAggregatedOperators
"
Class {
	#name : #DBE2DecisionToAggregatedOperatorsTest,
	#superclass : #TestCase,
	#instVars : [
		'model',
		'renameT1CAsD'
	],
	#category : #'DBEvolution2-Aggregators-Tests'
}

{ #category : #'model building' }
DBE2DecisionToAggregatedOperatorsTest >> buildModel [
	| t1 t2 s v1 v2 v3 publicNamespace |
	model := FmxSQLMooseModel new.
	publicNamespace := FmxSQLNamespace new
								name: 'public';
								mooseModel: model;
								yourself.
	t1 := FmxSQLTable new
		name: 't1';
		parentNamespace: publicNamespace;
		mooseModel: model;
		yourself.
		
	FmxSQLColumn new
		name: 'c';
		mooseModel: model;
		columnsContainer: t1.
		
	t2 := FmxSQLTable new
		name: 't2';
		parentNamespace: publicNamespace;
		mooseModel: model;
		yourself.
		
	FmxSQLColumn new
		name: 'e';
		mooseModel: model;
		columnsContainer: t2.
	
	FmxSQLStoredProcedure new
			name: 'COUNT';
			isStub: true;
			parentNamespace: publicNamespace;
			mooseModel: model.
	
	s := FmxSQLStoredProcedure new
			name: 's';
			source: '
			BEGIN
			RETURN SELECT COUNT(*) FROM t1 WHERE t1.c > 5;
			END;';
			parentNamespace: publicNamespace;
			mooseModel: model;
			yourself.
			
	self symbolResolutionForStoredProcedure: s in: model.
	
	v1 := FmxSQLView new
				name: 'v1';
				source: 'SELECT t1.c FROM t1 WHERE t1.c = 1';
				parentNamespace: publicNamespace;
				mooseModel: model;
				yourself.
	FmxSQLColumn new
		name: 'c';
		columnsContainer: v1;
		mooseModel: model.
	
	self symbolResolutionForView: v1 in: model.
				
	v2 := FmxSQLView new
				name: 'v2';
				source: 'SELECT v1.c, t2.e FROM v1, t2';
				parentNamespace: publicNamespace;
				mooseModel: model;
				yourself.
	FmxSQLColumn new
		name: 'c';
		columnsContainer: v2;
		mooseModel: model.
	FmxSQLColumn new
		name: 'e';
		columnsContainer: v2;
		mooseModel: model.
	
	self symbolResolutionForView: v2 in: model.			
	
	v3 := FmxSQLView new
				name: 'v3';
				source: 'SELECT v2.e FROM v2';
				parentNamespace: publicNamespace;
				mooseModel: model;
				yourself.
	FmxSQLColumn new
		name: 'e';
		columnsContainer: v3;
		mooseModel: model.
	
	self symbolResolutionForView: v3 in: model.
]

{ #category : #'as yet unclassified' }
DBE2DecisionToAggregatedOperatorsTest >> createRenameT1COperatorAndTakeDecisions [
	| t1C firstChoice |
	t1C := ((model allWithType: FmxSQLTable) detect: [ :t | t name = 't1' ]) columnNamed: 'c'.
	renameT1CAsD := DBE2EntityRename entity: t1C newName: 'd'.
	
	firstChoice := renameT1CAsD recommandations detect: [ :r | r isChoiceOperator ].
	
	firstChoice chosenRecommandation: (firstChoice possibleRecommandations detect: [ :r | r class = DBE2ChangeTarget ]).
	
	firstChoice recommandations first recommandations first
		chosenRecommandation: (firstChoice recommandations first recommandations first possibleRecommandations detect: [ :r | r class = DBE2AliasAndChangeTarget ])
]

{ #category : #running }
DBE2DecisionToAggregatedOperatorsTest >> setUp [
	super setUp.
	self buildModel.
	
	self createRenameT1COperatorAndTakeDecisions
]

{ #category : #'model building' }
DBE2DecisionToAggregatedOperatorsTest >> symbolResolutionForStoredProcedure: aStoredProcedure in: aModel [
	| visitor |
	visitor := (FmxSQLSymbolResolutionVisitor model: model function: aStoredProcedure).
	visitor errorReport 
		catchWarningsDuring: [ 
			(PostgreSQLParser parseStoredProcedureBody: aStoredProcedure source)
				acceptVisitor: visitor ].
		
	self assert: visitor errorReport errors isEmpty
]

{ #category : #'model building' }
DBE2DecisionToAggregatedOperatorsTest >> symbolResolutionForView: aView in: aModel [
	| visitor |
	visitor := (FmxSQLSymbolResolutionVisitor model: aModel view: aView).
	
	visitor errorReport 
		catchWarningsDuring: [ 
			|scope|
			scope := (PostgreSQLParser parseSelectQuery: aView source)
				acceptVisitor: visitor.
			aView query: scope entity query. ].
		
	self assert: visitor errorReport errors isEmpty
]

{ #category : #test }
DBE2DecisionToAggregatedOperatorsTest >> testAggregate [

	self flag: #toImplement.
	self assert: false
]
