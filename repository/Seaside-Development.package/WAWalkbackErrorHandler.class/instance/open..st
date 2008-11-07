private
open: anException
	| answer |
	answer := self session inNewRenderLoopCall: (WAWalkback exception: anException).
	answer ifTrue: [ SeasidePlatformSupport openDebuggerOn: anException ]