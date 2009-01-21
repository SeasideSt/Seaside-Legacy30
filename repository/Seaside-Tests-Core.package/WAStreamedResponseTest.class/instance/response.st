accessing
response
	^ super response ifNil: [ response := WAStreamedResponse on: self stream ]