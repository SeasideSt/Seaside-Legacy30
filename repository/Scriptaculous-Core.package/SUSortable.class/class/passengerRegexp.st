private
passengerRegexp
	^ JSStream new
		nextPutAll: '/^';
		nextPutAll: self passengerPrefix;
		nextPutAll: '([0-9]+)$/'