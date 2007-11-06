actions
snapshot
	"Snapshot all the states that have been registered for backtracking overriding existing snapshots."

	self associationsDo: [ :assoc | assoc value: assoc key snapshotCopy ]