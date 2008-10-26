registration
register: anEntryPointClass at: aString in: aDispatcher
	| path dispatcher |
	path := aString findTokens: '/'.
	dispatcher := path allButLast
		inject: aDispatcher
		into: [ :result :each |
			result entryPoints 
				at: each
				ifAbsent: [ result register: (WADispatcher named: each) ] ].
	^ dispatcher register: (anEntryPointClass named: path last)