initialization
initializeOn: aPusher
	id := WAKeyGenerator current 
		keyOfLength: 16.
	pusher := aPusher