processing
processWithRequest: aRequest
	| sorted |
	sorted := SortedCollection new.
	aRequest fields keysDo: [ :key |
		sorted
			at: key
			ifPresent: [ :callback | sorted add: callback ] ].
	sorted do: [ :callback |
		callback evaluateWithField:
			(aRequest fields	at: callback key) ]