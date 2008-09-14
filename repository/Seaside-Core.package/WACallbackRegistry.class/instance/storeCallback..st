callbacks
storeCallback: aCallback
	| key |
	key := context storeCallback: aCallback.
	aCallback setContext: context key: key.
	^ key