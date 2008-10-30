private
open: anException
	| answer |
	self requestContext request isXmlHttpRequest ifTrue: [ ^ super open: anException ].
	
	answer := self session inNewRenderLoopCall: (SeasidePlatformSupport walkbackClass exception: anException).
	answer ifTrue: [ super open: anException ]