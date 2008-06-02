registry
register: anObject
	"Register anObject for backtracking."

	anObject ifNotNil: [ objects at: anObject put: anObject snapshotCopy ]