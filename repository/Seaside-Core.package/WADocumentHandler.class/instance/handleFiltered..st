processing
handleFiltered: aRequestContext
	aRequestContext response
		cacheForever;
		document: self document.
	aRequestContext respond