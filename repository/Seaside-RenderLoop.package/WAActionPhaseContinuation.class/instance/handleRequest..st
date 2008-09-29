as yet unclassified
handleRequest: aRequest 
	| renderContinuation |
	aRequest isXmlHttpRequest ifTrue: [ self requestContext onRespond: [ :r | states snapshot ] ].
	self withNotificationHandler: [ self renderingContext callbacks processWithRequest: aRequest ].
	
	renderContinuation := WARenderPhaseContinuation root: self root.
	
	(self shouldRedirect: aRequest) 
		ifTrue: [ self respond: [ :response | response redirectTo: renderContinuation url ] ]
		ifFalse: [ renderContinuation value: aRequest ]