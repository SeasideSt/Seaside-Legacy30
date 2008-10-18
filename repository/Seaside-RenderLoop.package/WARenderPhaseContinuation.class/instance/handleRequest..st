processing
handleRequest: aRequest 
	self withNotificationHandler: [ self render ]