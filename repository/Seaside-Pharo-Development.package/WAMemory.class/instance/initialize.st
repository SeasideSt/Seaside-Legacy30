initialization
initialize
	super initialize.
	instances := IdentityDictionary new.
	formatter := WAPrinter binaryFileSize.
	self session traverseWithMemory: self seen: (IdentitySet with: self session).
	table := self buildTable