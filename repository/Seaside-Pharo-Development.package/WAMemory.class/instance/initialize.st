initialization
initialize
	super initialize.
	instances := IdentityDictionary new.
	formatter := GRPrinter binaryFileSize.
	self session 
		traverseWithMemory: self
		seen: (IdentitySet with: self session).
	table := self buildTable