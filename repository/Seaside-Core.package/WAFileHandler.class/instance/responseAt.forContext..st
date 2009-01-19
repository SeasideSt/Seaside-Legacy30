private
responseAt: aPath forContext: aRequestContext
	| libraryClass |
	aPath isEmpty
		ifTrue: [ ^ (self fileHandlerListingClass on: self context: aRequestContext) responseForLibraries ].
	libraryClass := self
		libraryAt: aPath first asSymbol
		ifAbsent: [ ^ self notFoundForContext: aRequestContext ].
	aPath size > 1
		ifTrue: [
			libraryClass
				documentAt: aPath second
				forContext: aRequestContext.
			" won't be executed if a document is found "
			aRequestContext responseFactory 
				notFound;
				return ]
		ifFalse: [ (self fileHandlerListingClass on: self context: aRequestContext)
					responseForLibrary: libraryClass default ]