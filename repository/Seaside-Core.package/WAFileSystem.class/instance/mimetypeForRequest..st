private
mimetypeForRequest: aRequest
	| url path |
	url := WAUrl new parsePath: aRequest url; yourself.
	path := url path.
	^(path isEmpty or: [ (path last includes: $.) not ])
		ifTrue: [ WAFileLibrary defaultMimeType toMimeType ]
		ifFalse: [
			| extension |
			extension := path last copyAfterLast: $..
			WAFileLibrary mimetypeFor: extension ]