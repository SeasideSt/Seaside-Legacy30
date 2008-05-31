accessing
argumentAt: anInteger
	^ self new
		nextPutAll: 'arguments[';
		javascript: anInteger - 1;
		nextPutAll: ']'