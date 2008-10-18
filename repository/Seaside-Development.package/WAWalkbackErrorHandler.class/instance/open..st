private
open: anException
	| answer |
	self requestContext request isXmlHttpRequest ifTrue: [ ^ super open: anException ].
	
	answer := WARenderLoop new
		call: (SeasidePlatformSupport walkbackClass exception: anException).
	answer ifTrue: [ super open: anException ]