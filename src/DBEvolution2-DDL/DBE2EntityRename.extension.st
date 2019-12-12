Extension { #name : #DBE2EntityRename }

{ #category : #'*DBEvolution2-DDL' }
DBE2EntityRename >> asRenameColumnDDL [
	^ DBE2DDLRenameColumn new
		tableName: self entity columnsContainer name;
		columnName: self entity name;
		newColumnName: self newName;
		yourself
]
