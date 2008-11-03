public
ensureKeyForHandler: anObject
	^ (self keyOrNilForHandler: anObject) ifNil: [ self registerRequestHandler: anObject ]