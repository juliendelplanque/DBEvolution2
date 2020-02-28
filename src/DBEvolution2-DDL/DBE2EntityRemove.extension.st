Extension { #name : #DBE2EntityRemove }

{ #category : #'*DBEvolution2-DDL' }
DBE2EntityRemove >> asRemoveColumnDDL [
	^ DBE2DDLRemoveColumn new
		tableName: self entity columnsContainer name;
		columnName: self entity name;
		yourself
]

{ #category : #'*DBEvolution2-DDL' }
DBE2EntityRemove >> ddlForColumn: aFmxSQLColumn [ 
	^ self asRemoveColumnDDL
]
