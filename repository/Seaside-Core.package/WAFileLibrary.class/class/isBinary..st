private
isBinary: aFilename
	| tokens type subTypes |
	tokens := (self
				mimetypeFor: (aFilename copyAfterLast: $.)) findTokens: '/'.
	type := tokens first.
	type = 'text' ifTrue: [^false].
	type = 'application' ifFalse: [^true].
	tokens size = 1 ifTrue: [^true].
	subTypes := tokens second findTokens: '+'.
	^ subTypes noneSatisfy: [:each |
		#('x-javascript' 'xml') includes: each]