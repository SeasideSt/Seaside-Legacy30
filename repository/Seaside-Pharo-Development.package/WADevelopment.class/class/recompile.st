tools
recompile
	"Recompiles the all Seaside related packages."
	
	self packages
		do: [ :package |
			package methods
				do: [ :method | method actualClass recompile: method methodSymbol ]
				displayingProgress: package packageName ]
		displayingProgress: 'Recompiling'