callbacks
storeCallback: aCallback
	| key |
	key := context storeCallback: aCallback.
	aCallback setContext: context owner: owner key: key.
	^ key