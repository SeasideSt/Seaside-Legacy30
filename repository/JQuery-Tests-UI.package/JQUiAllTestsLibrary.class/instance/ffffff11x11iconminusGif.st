theme
ffffff11x11iconminusGif
	| cache |
	cache := #(nil) beMutable.
	(cache at: 1) isNil ifTrue: [
		cache at: 1 put: #(71 73 70 56 57 97 11 0 11 0 128 0 0 252 254 252 1 254 253 33 249 4 1 0 0 1 0 44 0 0 0 0 11 0 11 0 0 2 15 140 143 169 203 13 15 161 137 116 82 217 178 222 166 0 0 59) asByteArray ].
	^ cache at: 1