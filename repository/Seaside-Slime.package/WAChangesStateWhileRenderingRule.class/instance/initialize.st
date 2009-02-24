initialization
initialize
	super initialize.
	matcher := ParseTreeSearcher new.
	matcher 
		matches: '`var'
		do: [ :node :answer | 
			(node isWrite and: [ (WASlime isWithinCallback: node) not ])
				ifTrue: [ answer add: node ].
			answer ]