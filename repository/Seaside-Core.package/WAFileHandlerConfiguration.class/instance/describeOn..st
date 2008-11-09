description
describeOn: config
	(config list: #fileHandlerListingClass)
		options: [ self listingClasses ];
		default: WAForbiddenFileHandlerListing