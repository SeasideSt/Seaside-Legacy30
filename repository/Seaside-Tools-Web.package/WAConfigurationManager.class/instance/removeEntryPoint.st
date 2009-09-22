actions
removeEntryPoint
	self dispatcher unregister: self selection.
	self selection: nil.
	self emptyPage 