accessing-dynamic
leaves
	^ String streamContents: [ :stream | 
		self tally
			leavesPrintOn: stream
			tallyExact: true
			orThreshold: 2 ]