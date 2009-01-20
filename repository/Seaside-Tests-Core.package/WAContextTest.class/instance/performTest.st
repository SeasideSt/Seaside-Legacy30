running
performTest
	| context |
	context := self createRequestContext.
	WACurrentRequestContext 
		use: context
		during: [ self pushHandlers: self handlersToPush for: context ]