as yet unclassified
handleRequest: aRequest 
	self withNotificationHandler: [ self render ]