processing
processOn: aStream with: aString
	callback ifNotNil: [ self render: [:html | callback valueWithPossibleArgs: {html. aString}] on: aStream ]