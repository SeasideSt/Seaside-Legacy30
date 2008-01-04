private
passengerRegexp
	^ SUStream new
		nextPutAll: '/^';
		nextPutAll: self passengerPrefix;
		nextPutAll: '([0-9]+)$/'