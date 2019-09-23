"
Renaming an #entity is defined as actually changing its name and adapt references to it.
"
Class {
	#name : #DBE2EntityRename,
	#superclass : #DBE2DelegatingRecommandations,
	#instVars : [
		'newName'
	],
	#category : #'DBEvolution2-Core'
}

{ #category : #'instance creation' }
DBE2EntityRename class >> entity: aFmxSQLColumn newName: aString [ 
	^ self new
		entity: aFmxSQLColumn;
		newName: aString;
		yourself
]

{ #category : #visiting }
DBE2EntityRename >> acceptVisitor: anOperatorVisitor [
	<generated>
	^ anOperatorVisitor visitEntityRename: self
]

{ #category : #references }
DBE2EntityRename >> incomingReferencesForColumn [
	^ super incomingReferencesForColumn
		reject:
			[ :columnReference | columnReference from isConstraint or: [ columnReference from isAlias ] ]
]

{ #category : #printing }
DBE2EntityRename >> innerPrintOn: aStream [
	aStream print: self entity name.
	aStream nextPutAll: ' -> '.
	aStream print: self newName
]

{ #category : #accessing }
DBE2EntityRename >> newName [
	^ newName
]

{ #category : #accessing }
DBE2EntityRename >> newName: anObject [
	newName := anObject
]

{ #category : #recommandations }
DBE2EntityRename >> recommandationsForColumnOn: operatorsStream [
	self incomingReferences
		do: [ :reference | 
			(reference isColumnReference and: [ reference from isAnyBelongerSourced and: [ reference from sourcedBelonger isView and: [ reference from isSelectClause and: [ reference belongsToGroup isNil ] ] ] ])
				ifTrue: [ 
					"If the reference does not belong to a reference group and is in a SELECT clause,
					 it means there are two possiblities:
						- either the user decide to alias the rewritten reference with the old name.
						That way, users of the SELECT query are not impacted by the change.
						- or the user decide to rewrite the reference and discard the old name. In
						that case, the users of the SELECT query need to be updated to use the new name.
					"
					operatorsStream
						nextPut: (DBE2ChoiceOperator possibleRecommandations: {
							DBE2AliasAndChangeTarget reference: reference newTargetName: self newName.
							DBE2ChangeTarget reference: reference newTargetName: self newName. }) ]
				ifFalse: [ 
					operatorsStream
						nextPut: (DBE2ChangeTarget reference: reference newTargetName: self newName) ] ]
]
