system startup
startUp
	self instance adaptors do: [ :each | each startUp ]