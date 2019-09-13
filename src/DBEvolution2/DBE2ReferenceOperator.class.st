Class {
	#name : #DBE2ReferenceOperator,
	#superclass : #DBE2Operator,
	#instVars : [
		'#reference interface: #(#source #target )',
		'#recommandations'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #'instance creation' }
DBE2ReferenceOperator class >> reference: reference [
	^ self new
		reference: reference;
		yourself
]

{ #category : #accessing }
DBE2ReferenceOperator >> recommandations [
	^ recommandations ifNil: [ recommandations := Array streamContents: [ :stream | self reference from recommandationsFor: self on: stream ] ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForCheckConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForCheckConstraintOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForCheckConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForColumn [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForColumnOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForColumnOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForExceptClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForExceptClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForExceptClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForForeignKeyConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForForeignKeyConstraintOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForForeignKeyConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForForeignTable [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForForeignTableOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForForeignTableOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForFromClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForFromClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForFromClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForGroupByClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForGroupByClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForGroupByClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForHavingClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForHavingClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForHavingClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForIntersectClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForIntersectClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForIntersectClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForIntoClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForIntoClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForIntoClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForJoinClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForJoinClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForJoinClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForLimitClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForLimitClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForLimitClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForLocalVariable [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForLocalVariableOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForLocalVariableOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForNamespace [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForNamespaceOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForNamespaceOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForNotNullConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForNotNullConstraintOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForNotNullConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForOnConflictClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForOnConflictClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForOnConflictClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForOrderByClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForOrderByClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForOrderByClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForParameter [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForParameterOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForParameterOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForPrimaryKeyConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForPrimaryKeyConstraintOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForPrimaryKeyConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForReturningClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForReturningClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForReturningClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForSelectClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForSelectClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForSelectClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForSetClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForSetClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForSetClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForStoredProcedure [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForStoredProcedureOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForStoredProcedureOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTable [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTableOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTableOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTrigger [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTriggerOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTriggerOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTriggerStoredProcedure [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTriggerStoredProcedureOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTriggerStoredProcedureOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForType [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForTypeOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForTypeOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForUnionClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForUnionClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForUnionClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForUniqueConstraint [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForUniqueConstraintOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForUniqueConstraintOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForUsingClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForUsingClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForUsingClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForValuesClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForValuesClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForValuesClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForView [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForViewOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForViewOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForWhereClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForWhereClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForWhereClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForWithClause [
	<generated>
	^ Array
		streamContents: [ :operatorsStream | self recommandationsForWithClauseOn: operatorsStream ]
]

{ #category : #recommandations }
DBE2ReferenceOperator >> recommandationsForWithClauseOn: operatorsStream [
	<generated>
	self subclassResponsibility
]

{ #category : #accessing }
DBE2ReferenceOperator >> reference [
	^ reference
]

{ #category : #accessing }
DBE2ReferenceOperator >> reference: anObject [
	reference := anObject
]

{ #category : #accessing }
DBE2ReferenceOperator >> sourceAnchor [
	^ self reference sourceAnchor
]

{ #category : #accessing }
DBE2ReferenceOperator >> sourceAnchorEnd [
	^ self sourceAnchor end
]

{ #category : #accessing }
DBE2ReferenceOperator >> sourceAnchorStart [
	^ self sourceAnchor start
]

{ #category : #accessing }
DBE2ReferenceOperator >> sourceEntity [
	^ self reference from
]

{ #category : #accessing }
DBE2ReferenceOperator >> start [
	^ self reference start
]

{ #category : #accessing }
DBE2ReferenceOperator >> stop [
	^ self reference stop
]

{ #category : #accessing }
DBE2ReferenceOperator >> substringToRewrite [
	^ self sourceAnchor entity source
			copyFrom: self sourceAnchor start
			to: self sourceAnchor end
]
