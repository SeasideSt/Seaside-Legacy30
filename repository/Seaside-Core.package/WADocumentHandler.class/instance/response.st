accessing
response
	^ (WAResponse document: self document)
		cacheForever;
		yourself