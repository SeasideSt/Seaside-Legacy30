initialization
initializeOn: aPusher session: aSession context: aContext
	id := WAKeyGenerator current
		keyOfLength: 8.
	pusher := aPusher.
	session := aSession.
	context := aContext