testing-conveniance
testRefreshAfterLocation
	self response refreshAfter: '5' location: 'http://www.seaside.st'.
	self response nextPutAll: 'Redirecting to http://www.seaside.st soon.'.
	self assertLines: #('HTTP/1.1 200 OK' 'Refresh: 5; http://www.seaside.st' 'Content-Length: 42' '' 'Redirecting to http://www.seaside.st soon.')