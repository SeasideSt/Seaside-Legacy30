initialize-release
initializePorts: aString
	self ports: ((aString findTokens: $,) collect: [ :each | each asInteger ]).