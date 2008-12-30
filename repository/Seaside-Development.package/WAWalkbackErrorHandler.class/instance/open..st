private
open: anException
	| answer |
	self requestContext request isXmlHttpRequest ifTrue: [ ^ super open: anException ].
	
	"If an error occurs outside the scope of a session or the part of the session where
	WACurrentRequestContext is defined, we need to catch this and just use the super
	behaviour."
	[answer := self session isNil or:
				[ self session inNewRenderLoopCall:
					(SeasidePlatformSupport walkbackClass exception: anException) ].
	answer ifTrue: [ super open: anException ] ]
		on: WARequestContextRequest
		do: [ :err | super open: anException ]