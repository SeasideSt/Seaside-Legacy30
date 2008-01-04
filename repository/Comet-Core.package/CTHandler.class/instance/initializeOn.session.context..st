initialization
initializeOn: aPusher session: aSession context: aContext
	id := WAExternalID new asString.
	pusher := aPusher.
	session := aSession.
	context := aContext