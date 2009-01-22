testing-conveniance
testRefreshAfterLocation
	self response refreshAfter: 3 seconds location: 'http://www.seaside.st/'.
	self assertLines: #('HTTP/1.1 200 OK' 'Refresh: 0:00:00:03; http://www.seaside.st/' 'Content-Length: 0' '')