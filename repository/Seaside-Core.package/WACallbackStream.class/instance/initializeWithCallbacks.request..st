initialization
initializeWithCallbacks: aDictionary request: aRequest
	| collection |
	collection := SortedCollection new.
	aRequest fields keys do: [ :each |
		aDictionary
			at: each 
			ifPresent: [ :callback | collection add: callback ] ].
	callbacks := ReadStream on: collection asArray.
	request := aRequest