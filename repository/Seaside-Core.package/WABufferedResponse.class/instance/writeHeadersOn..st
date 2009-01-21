writing
writeHeadersOn: aStream 
	self 
		headerAt: 'Content-Length'
		put: contentsStream contents size.
	super writeHeadersOn: aStream