private
paddedMinutes
	^ (WAMappedPrinter
		block: [ :time | time minutes ]
		next: (WANumberPrinter new padding: $0; digits: 2)), ' min '