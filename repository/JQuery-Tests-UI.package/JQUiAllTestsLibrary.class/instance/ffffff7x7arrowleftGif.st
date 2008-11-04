theme
ffffff7x7arrowleftGif
	| cache |
	cache := #(nil) beMutable.
	(cache at: 1) isNil ifTrue: [
		cache at: 1 put: #(71 73 70 56 57 97 7 0 7 0 128 0 0 252 254 252 1 254 253 33 249 4 1 0 0 1 0 44 0 0 0 0 7 0 7 0 0 2 12 140 3 103 144 199 141 158 146 19 58 83 0 0 59) asByteArray ].
	^ cache at: 1