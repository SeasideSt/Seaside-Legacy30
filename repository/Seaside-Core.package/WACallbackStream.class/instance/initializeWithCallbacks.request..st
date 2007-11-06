initialization
initializeWithCallbacks: aDictionary request: aRequest
	| collection |
	collection := SortedCollection new.
	aRequest fields keys do:
		[:ea |
		aDictionary at: ea ifPresent: [:callback | collection add: callback]].
	callbacks := ReadStream on: collection asArray.
	request := aRequest