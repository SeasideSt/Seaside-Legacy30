accessing
response
	^ super response ifNil: [ response := WAStreamedResponse on: String new writeStream ]