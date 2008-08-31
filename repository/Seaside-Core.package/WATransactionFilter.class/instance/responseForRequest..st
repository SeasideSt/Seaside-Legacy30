processing
responseForRequest: aRequest
	^ self isClosed
		ifFalse: [ super responseForRequest: aRequest ]
		ifTrue: [
			WAResponse new
				nextPutAll: '<html><head><title>Page Expired</title><body><h1>Page Expired</h1><p>Please use the back-button to navigate to the last valid page.</p></html>';
				doNotCache;
				yourself ]