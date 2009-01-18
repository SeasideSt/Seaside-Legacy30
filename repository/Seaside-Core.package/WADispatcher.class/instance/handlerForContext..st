private
handlerForContext: aRequestContext
	| requestUrl baseUrl relativePath |
	requestUrl := aRequestContext request url.
	requestUrl path isEmpty ifTrue: [
		^self handlerOrNotFoundAt: self defaultName ].
	
	baseUrl := WAUrl new addAllToPath: self path; yourself.
	relativePath := baseUrl relativeTo: requestUrl.
	
	relativePath isEmpty ifTrue: [
		^self handlerOrNotFoundAt: self defaultName ].
		
	^ self handlerOrNotFoundAt: relativePath first