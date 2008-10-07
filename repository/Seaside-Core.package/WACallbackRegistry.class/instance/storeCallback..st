registration
storeCallback: aCallback
	| key |
	key := self advanceKey.
	callbacks at: (aCallback convertKey: key) put: aCallback.
	aCallback setContext: context key: key.
	^ key