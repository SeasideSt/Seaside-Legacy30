private
responseAt: aPath forContext: aRequestContext
	| libraryClass |
	aPath isEmpty ifTrue: [
		^ (self fileHandlerListingClass on: self context: aRequestContext) responseForLibraries ].
	libraryClass := self
		libraryAt: aPath first asSymbol
		ifAbsent: [ ^ self notFoundResponseFor: aRequestContext ].
	^aPath size > 1
		ifTrue: [
			libraryClass
				documentAt: aPath second
				ifAbsent: [ self notFoundResponseFor: aRequestContext ] ]
		ifFalse: [ (self fileHandlerListingClass on: self context: aRequestContext)
					responseForLibrary: libraryClass default ]