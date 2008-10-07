public
size
	^ self mutex critical: [ objectsByKey size ].
