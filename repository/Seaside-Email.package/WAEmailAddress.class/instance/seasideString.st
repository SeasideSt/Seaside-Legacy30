displaying
seasideString
	^ String streamContents: [ :stream | 
		self encodeOn: stream usingQuotes: true ]