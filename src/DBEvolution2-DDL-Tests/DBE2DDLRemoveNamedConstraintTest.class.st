Class {
	#name : #DBE2DDLRemoveNamedConstraintTest,
	#superclass : #TestCase,
	#instVars : [
		'ddl'
	],
	#category : #'DBEvolution2-DDL-Tests'
}

{ #category : #running }
DBE2DDLRemoveNamedConstraintTest >> setUp [
	super setUp.
	ddl := DBE2DDLRemoveNamedConstraint new
				tableName: 'person';
				constraintName: 'const_personne';
				yourself
]

{ #category : #tests }
DBE2DDLRemoveNamedConstraintTest >> testGenerateSQL [
	self assert: ddl generateSQL equals: 'ALTER TABLE "person" DROP CONSTRAINT "const_personne";'
]
