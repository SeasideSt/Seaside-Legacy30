public
profile: aBlock
	start := TimeStamp now.
	tally := MessageTally new.
	^ tally spyEvery: 1 on: aBlock