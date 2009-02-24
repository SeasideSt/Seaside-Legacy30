initialization
initialize
	super initialize.
	matcher := ParseTreeSearcher new.
	matcher 
		matchesAnyOf: (WASlime forbiddenCallbackSelectors 
			collect: [ :each | '``@receiver' , (self genericPatternForSelector: each) ])
		do: [ :node :answer | 
			(WASlime isWithinCallback: node)
				ifTrue: [ answer add: node ].
			answer ]