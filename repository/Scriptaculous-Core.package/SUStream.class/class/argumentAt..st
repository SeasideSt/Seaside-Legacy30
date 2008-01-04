accessing
argumentAt: anInteger
	^ SUStream new
		nextPutAll: 'arguments[';
		javascript: anInteger - 1;
		nextPutAll: ']'