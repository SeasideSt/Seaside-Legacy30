private
processCallbacks: aRequest
	| callbacks |
	callbacks := SortedCollection new.
	aRequest fields keysDo: [ :key |
		renderContext callbacks
			at: key
			ifPresent: [ :callback | callbacks add: callback ] ].
	callbacks do: [ :callback |
		callback evaluateWithField: (aRequest fields
			at: callback key) ]