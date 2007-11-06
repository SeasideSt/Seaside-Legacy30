private
open: anException
	| answer |
	answer := WARenderLoop new
		call: (WAWalkback exception: anException)
		withToolFrame: false.
	answer ifTrue: [ SeasidePlatformSupport openDebuggerOn: anException ]