converting
seasideString
	^ String streamContents: [ :stream | self printOn: stream ]