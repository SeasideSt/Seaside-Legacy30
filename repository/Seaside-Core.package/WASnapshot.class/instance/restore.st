actions
restore
	"Restore all the backtracked states."

	self keysAndValuesDo: [ :key :value | key restoreFromSnapshot: value ]