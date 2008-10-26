options
tolerance: aString
	"This is the way the reordering behaves during drag. Default is 'guess', which guesses what mode to use ('intersect' or 'tolerance'), in some setups, 'pointer' is more natural."

	self optionAt: 'tolerance' put: aString