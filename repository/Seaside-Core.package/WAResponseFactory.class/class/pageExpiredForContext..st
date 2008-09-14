as yet unclassified
pageExpiredForContext: aRequestContext
	^WAResponse new
		contentType: 'text/plain' toMimeType;
		nextPutAll: 'This page has expired, please use the back-button to navigate to the last valid page.';
		doNotCache;
		yourself