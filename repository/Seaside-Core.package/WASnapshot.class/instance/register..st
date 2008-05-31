registry
register: anObject
	anObject ifNotNil: [ objects at: anObject put: anObject snapshotCopy ]