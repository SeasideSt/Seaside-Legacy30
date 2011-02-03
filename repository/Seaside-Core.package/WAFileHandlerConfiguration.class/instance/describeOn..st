description
describeOn: config
	(config list: #fileHandlerListingClass)
		beAdvanced;
		options: [ self listingClasses ];
		default: WAForbiddenFileHandlerListing.
	(config url: #resourceBaseUrl)
		group: #server;
		comment: 'Sets the base URL for generated URLs.'.
	(config boolean: #useXSendfile)
		beAdvanced;
		group: #server;
		comment: 'Sets whether to use the X-Sendfile header to stream file library contents.';
		default: false.
	(config boolean: #xSendfileAlwaysDeploy)
		beAdvanced;
		group: #server;
		comment: 'Sets whether to always deploy a file before returning it using the X-Sendfile header.';
		default: false.