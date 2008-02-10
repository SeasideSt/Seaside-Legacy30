instance-creation
register: aString in: aDispatcher
	| path dispatcher |
	path := aString findTokens: '/'.
	dispatcher := path allButLast
		inject: aDispatcher
		into: [ :result :each |
			result entryPoints 
				at: each
				ifAbsent: [ result register: (WADispatcher named: each) ] ].
	^ dispatcher register: (self named: path last)