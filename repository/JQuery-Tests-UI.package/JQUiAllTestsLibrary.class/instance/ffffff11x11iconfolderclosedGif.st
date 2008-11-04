theme
ffffff11x11iconfolderclosedGif
	| cache |
	cache := #(nil) beMutable.
	(cache at: 1) isNil ifTrue: [
		cache at: 1 put: #(71 73 70 56 57 97 11 0 11 0 128 0 0 252 254 252 1 254 253 33 249 4 1 0 0 1 0 44 0 0 0 0 11 0 11 0 0 2 20 140 143 169 7 13 250 88 147 206 209 26 3 182 102 207 238 45 226 88 0 0 59) asByteArray ].
	^ cache at: 1