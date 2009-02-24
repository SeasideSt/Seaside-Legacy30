initialization
initialize
	super initialize.
	matcher := ParseTreeSearcher new.
	matcher 
		matches: 'self basicNew initialize'
		do: [ :node :answer | true ]