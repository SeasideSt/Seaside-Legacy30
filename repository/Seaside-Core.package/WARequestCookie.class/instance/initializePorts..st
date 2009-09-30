initialization
initializePorts: aString 
	self ports: ((aString findTokens: $,) collect: [ :each | each greaseInteger ])