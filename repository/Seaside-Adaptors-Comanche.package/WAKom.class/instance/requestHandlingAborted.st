private
requestHandlingAborted
	^ (HttpResponse fromString: 'Request handling aborted; reload to retry')
		contentType: 'text/plain';
		yourself