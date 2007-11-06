registration
registerAsApplication: aString
	"Use this to programatically register a component as an appliction.
	#canBeRoot does not have to return true"
	| path dispatcher |
	path := aString findTokens: '/'.
	dispatcher := path allButLast
		inject: WADispatcher default
		into: [ :result :each |
			result entryPoints at: each ifAbsent: [
				result register: (WADispatcher named: each) ] ].
	^ dispatcher register: (self applicationNamed: path last)