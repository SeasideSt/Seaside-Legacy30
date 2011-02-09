description
describeOn: config
	(config list: #fileHandlerListingClass)
		beAdvanced;
		options: [ self listingClasses ];
		default: WAForbiddenFileHandlerListing