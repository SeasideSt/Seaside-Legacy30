private
open: anException
	| answer |
	answer := WARenderLoop new
		call: (WAWalkback exception: anException).
	answer ifTrue: [ super open: anException ]