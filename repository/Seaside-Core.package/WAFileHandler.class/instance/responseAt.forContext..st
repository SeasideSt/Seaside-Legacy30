private
responseAt: aPath forContext: aRequestContext 
	| libraryClass |
	aPath isEmpty
		ifTrue: [ ^ (self fileHandlerListingClass on: self context: aRequestContext) responseForLibraries ].
	libraryClass := self 
		libraryAt: aPath first asSymbol
		ifAbsent: [ ^ aRequestContext responseGenerator notFound; respond ].
	aPath size > 1 
		ifTrue: [
			libraryClass 
				documentAt: aPath second
				forContext: aRequestContext.
			" won't be executed if a document is found "
			aRequestContext responseGenerator
				notFound;
				respond ]
		ifFalse: [ (self fileHandlerListingClass on: self context: aRequestContext) responseForLibrary: libraryClass default ]