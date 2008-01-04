*scriptaculous-core
storePassenger: anObject
	| key |
	callbacks at: (key := self advanceKey) put: anObject.
	^ key