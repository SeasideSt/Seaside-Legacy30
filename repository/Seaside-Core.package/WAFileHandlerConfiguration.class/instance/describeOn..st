description
describeOn: config
	(config list: #fileHandlerListingClass)
		beAdvanced;
		options: [ self listingClasses ];
		default: WAForbiddenFileHandlerListing.
	(config url: #resourceBaseUrl)
		group: #server;
		comment: 'Sets the base URL for generated URLs.'.