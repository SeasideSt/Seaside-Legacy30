processing
handlerForRequest: aRequest relativeTo: aString
	| fullUrl relativeUrl handlerName |
	fullUrl := aRequest url.
	(aString isEmpty or: [ fullUrl beginsWith: aString ]) ifTrue: [
		relativeUrl := fullUrl allButFirst: aString size.
		handlerName := (relativeUrl notEmpty and: [ relativeUrl first = $/ ])
			ifTrue: [ (relativeUrl findTokens: '/') at: 1 ifAbsent: [ self defaultName ] ]
			ifFalse: [ self defaultName ].
		^ self entryPoints at: handlerName ifAbsent: [
			self entryPoints
				at: self defaultName
				ifAbsent: [ WANotFoundHandler new ] ] ].
       ^ WANotFoundHandler new