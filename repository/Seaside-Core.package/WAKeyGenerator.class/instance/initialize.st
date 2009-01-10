initialization
initialize
	super initialize.
	self startUp.
	self space: ($a to: $z) , ($A to: $Z) , ($0 to: $9) , (Array with: $_ with: $-)