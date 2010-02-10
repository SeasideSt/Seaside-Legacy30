processing
handle: aRequestContext
	| sorted requestFields |
	sorted := SortedCollection new.
	requestFields := aRequestContext request fields.
	requestFields keysDo: [ :key |
		callbacks at: key ifPresent: [ :callback |
			(callback isEnabledFor: aRequestContext)
				ifTrue: [ sorted add: callback ] ] ].
	sorted do: [ :callback |
		callback evaluateWithField: (requestFields at: callback key) ]