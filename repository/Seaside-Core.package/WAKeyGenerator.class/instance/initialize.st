initialization
initialize
	super initialize.
	self generator: WAPlatform current newRandom.
	self space: (Array withAll: ($a to: $z)) , (Array withAll: ($A to: $Z)) , (Array withAll: ($0 to: $9)) , (Array with: $_ with: $-)