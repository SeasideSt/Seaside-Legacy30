processing
handleRequest: aRequest
	| path baseUrl requestUrl |
	baseUrl := WAUrl new addAllToPath: self path; yourself. 
	requestUrl := WAUrl new parsePath: aRequest url; yourself.
	path := baseUrl relativeTo: requestUrl.
	^ path isEmpty
		ifTrue: [ self renderListing ]
		ifFalse: [
			self
				responseAt: path
				ifAbsent: [ self notFound: aRequest url ] ]