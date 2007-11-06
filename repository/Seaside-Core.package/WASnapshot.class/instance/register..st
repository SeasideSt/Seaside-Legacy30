registry
register: anObject
	anObject ifNotNil: [ self at: anObject put: anObject snapshotCopy ]