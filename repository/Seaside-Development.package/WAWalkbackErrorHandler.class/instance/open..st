private
open: anException
	| answer |
	self requestContext request isXmlHttpRequest ifTrue: [ ^ super open: anException ].
	
	answer := self session inNewRenderLoopCall: (WAWalkback exception: anException).
	answer ifTrue: [ super open: anException ]