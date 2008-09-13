private
handlerForRequest: aRequest
	| requestUrl baseUrl relativePath |
	requestUrl := WAUrl new parsePath: aRequest url; yourself.
	requestUrl path isEmpty ifTrue: [
		^self handlerOrNotFoundAt: self defaultName ].
	
	baseUrl := WAUrl new addAllToPath: self path; yourself.
	relativePath := baseUrl relativeTo: requestUrl.
	
	relativePath isEmpty ifTrue: [
		^self handlerOrNotFoundAt: self defaultName ].
		
	^ self handlerOrNotFoundAt: relativePath first