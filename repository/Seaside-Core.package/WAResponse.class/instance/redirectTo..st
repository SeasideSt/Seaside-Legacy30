convenience
redirectTo: aString
	self headerAt: 'Location' put: aString.
	self redirect