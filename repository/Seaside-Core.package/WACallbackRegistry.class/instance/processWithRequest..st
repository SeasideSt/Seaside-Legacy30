processing
processWithRequest: aRequest
	| sorted |
	sorted := SortedCollection new.
	aRequest fields keysDo: [ :key |
		callbacks
			at: key
			ifPresent: [ :callback | sorted add: callback ] ].
	sorted do: [ :callback |
		callback evaluateWithField:
			(aRequest fields	at: callback key) ]