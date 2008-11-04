theme
x11iconfolderopenGif
	| cache |
	cache := #(nil) beMutable.
	(cache at: 1) isNil ifTrue: [
		cache at: 1 put: #(71 73 70 56 57 97 11 0 11 0 128 0 0 36 34 36 1 254 253 33 249 4 1 0 0 1 0 44 0 0 0 0 11 0 11 0 0 2 20 140 143 169 7 13 234 226 51 210 177 182 2 174 84 115 250 101 98 82 0 0 59) asByteArray ].
	^ cache at: 1