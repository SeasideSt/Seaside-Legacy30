running
performTest
	| context |
	context := WARequestContext new.
	self configureContext: context.
	
	WACurrentRequestContext 
		use: context
		during: [
			self
				pushHandlers: self handlersToPush
				for: context ]