actions
release
	"Release the memory referenced by the receiver. This is used to help the poor garbage collectors."
	
	self request release.
	self response release
	