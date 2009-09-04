private
responseForContext: aRequestContext
	| libraryClass consumer |
	consumer := aRequestContext consumer.
	consumer atEnd
		ifTrue: [ ^ (self fileHandlerListingClass on: self context: aRequestContext) responseForLibraries ].
	libraryClass := self 
		libraryAt: consumer next
		ifAbsent: [ ^ aRequestContext responseGenerator notFound; respond ].
	consumer atEnd
		ifTrue: [
			| listingClass |
			listingClass := (self fileHandlerListingClass on: self context: aRequestContext).
			listingClass responseForLibrary: libraryClass default ]
		ifFalse: [
			libraryClass 
				documentAt: consumer next
				forContext: aRequestContext.
			" won't be executed if a document is found "
			aRequestContext responseGenerator
				notFound;
				respond ]