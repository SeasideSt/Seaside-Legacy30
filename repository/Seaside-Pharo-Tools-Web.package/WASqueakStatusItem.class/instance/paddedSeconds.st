private
paddedSeconds
	^ (WAMappedPrinter
		block: [ :time | time seconds ]
		next: (WAPrinter numberWithAtLeastDigits: 2)), ' sec'