initialization
clearAllHandlers
	self allSubInstancesDo: [ :each | each clearHandlers ]