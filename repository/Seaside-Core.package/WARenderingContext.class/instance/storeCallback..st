callbacks
storeCallback: aCallback
	| key |
	key := self advanceKey.
	callbacks at: (aCallback convertKey: key) put: aCallback.
	^ key