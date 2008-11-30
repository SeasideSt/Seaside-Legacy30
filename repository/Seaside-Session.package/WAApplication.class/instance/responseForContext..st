processing
responseForContext: aRequestContext
	"WAApplication instances only understand GET and POST requests"
	^(self isImplemented: aRequestContext request method)
		ifTrue: [ super responseForContext: aRequestContext ]
		ifFalse: [ WAResponse notImplemented ]