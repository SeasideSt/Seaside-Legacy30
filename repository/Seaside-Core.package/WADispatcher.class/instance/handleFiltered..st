processing
handleFiltered: aRequestContext
	| requestUrl baseUrl relativePath |
	requestUrl := aRequestContext request url.
	requestUrl path isEmpty 
		ifTrue: [ ^ self handleFiltered: aRequestContext named: self defaultName ].
	baseUrl := WAUrl new.
	baseUrl addAllToPath: self path.
	relativePath := baseUrl relativeTo: requestUrl.
	self handleFiltered: aRequestContext named: (relativePath isEmpty 
		ifTrue: [ self defaultName ]
		ifFalse: [ relativePath first ])