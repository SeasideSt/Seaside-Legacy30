system startup
shutDown
	self instance adaptors do: [ :each | each shutDown ]