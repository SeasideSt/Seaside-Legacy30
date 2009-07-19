actions
destroy
	"Release the memory referenced by the receiver. This is used to avoid having tangling references hanging around and thus saving memory."
	
	self request destroy.
	self response destroy.
	handlers := request := response := codec := properties := nil