processing
handleFiltered: aRequestContext
	"WAApplication instances only understand GET and POST requests"
	^(self isImplemented: aRequestContext request method)
		ifTrue: [ super handleFiltered: aRequestContext ]
		ifFalse: [ WAResponse notImplemented ]