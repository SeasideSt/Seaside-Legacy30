theme
x11icondocGif
	| cache |
	cache := #(nil) beMutable.
	(cache at: 1) isNil ifTrue: [
		cache at: 1 put: #(71 73 70 56 57 97 11 0 11 0 128 0 0 36 34 36 1 254 253 33 249 4 1 0 0 1 0 44 0 0 0 0 11 0 11 0 0 2 23 140 143 7 11 209 200 218 130 204 77 19 19 142 117 243 103 125 202 7 146 160 118 20 0 59) asByteArray ].
	^ cache at: 1