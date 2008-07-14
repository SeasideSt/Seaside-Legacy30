processing
processOn: aStream with: unused
	callback ifNotNil: [ callback value ]