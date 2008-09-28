processing
processWithRequest: aRequest
	| callbacks |
	callbacks := SortedCollection new.
	aRequest fields keysDo: [ :key |
		self
			at: key
			ifPresent: [ :callback | callbacks add: callback ] ].
	callbacks do: [ :callback |
		callback evaluateWithField:
			(aRequest fields	at: callback key) ]