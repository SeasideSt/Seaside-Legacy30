processing
processOn: aStream
	callback ifNotNil: [ self render: callback on: aStream ]