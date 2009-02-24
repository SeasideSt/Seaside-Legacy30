initialization
initialize
	super initialize.
	matcher := ParseTreeSearcher new.
	matcher 
		matchesAnyOf: (WASlime forbiddenRenderingSelectors 
			collect: [ :each | 'self' , (self genericPatternForSelector: each) ])
		do: [ :node :answer |
			(WASlime isWithinCallback: node)
				ifFalse: [ answer add: node ].
			answer ].