processing
handleRequest: aRequest
	| path |
	path := (aRequest url findTokens: $/) allButFirst: (self basePath findTokens: $/) size.
	^ path isEmpty
		ifTrue: [ self renderListing ]
		ifFalse: [
			self
			responseAt: path
			ifAbsent: [ self notFound: aRequest url ] ]