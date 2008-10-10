private
open: anException
	| answer |
	answer := WARenderLoop new
		call: (SeasidePlatformSupport walkbackClass exception: anException).
	answer ifTrue: [ super open: anException ]