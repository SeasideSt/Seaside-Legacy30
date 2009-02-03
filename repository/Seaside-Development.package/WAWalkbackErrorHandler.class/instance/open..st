private
open: anException 
	| answer |
	self requestContext request isXmlHttpRequest ifTrue: [ ^ super open: anException ].

	"If an error occurs trying to display the walkback component, we just use the super
	behaviour, which should be to open a debugger.."
	answer := 
	[ self session isNil or: 
		[ self session inNewRenderLoopCall: (WAPlatform current walkbackClass exception: anException) ] ] 
		on: Error
		do: [ :err | true ].
	answer ifTrue: [ super open: anException ]