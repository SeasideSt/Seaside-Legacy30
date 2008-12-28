private
storeCallback: aCallback
	| key |
	key := self advanceKey.
	callbacks at: (aCallback convertKey: key) put: aCallback.
	aCallback setKey: key callbacks: callbacks.
	^ key