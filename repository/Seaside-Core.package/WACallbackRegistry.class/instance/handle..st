processing
handle: aRequestContext
	| sorted |
	sorted := SortedCollection new.
	aRequestContext request fields keysDo: [ :key |
		callbacks at: key ifPresent: [ :callback |
			callback isEnabled
				ifTrue: [ sorted add: callback ] ] ].
	sorted do: [ :callback |
		callback evaluateWithField: (aRequestContext request fields 
			at: callback key) ]