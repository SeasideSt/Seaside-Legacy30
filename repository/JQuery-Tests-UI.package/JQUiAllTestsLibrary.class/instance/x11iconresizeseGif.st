theme
x11iconresizeseGif
	| cache |
	cache := #(nil) beMutable.
	(cache at: 1) isNil ifTrue: [
		cache at: 1 put: #(71 73 70 56 57 97 11 0 11 0 128 0 0 36 34 36 1 254 253 33 249 4 1 0 0 1 0 44 0 0 0 0 11 0 11 0 0 2 20 140 143 128 171 123 237 2 116 112 202 199 112 210 188 94 227 121 160 81 0 0 59) asByteArray ].
	^ cache at: 1