theme
x7arrowupGif
	| cache |
	cache := #(nil) beMutable.
	(cache at: 1) isNil ifTrue: [
		cache at: 1 put: #(71 73 70 56 57 97 7 0 7 0 128 0 0 36 34 36 1 254 253 33 249 4 1 0 0 1 0 44 0 0 0 0 7 0 7 0 0 2 11 140 143 128 1 125 13 25 140 171 154 2 0 59) asByteArray ].
	^ cache at: 1