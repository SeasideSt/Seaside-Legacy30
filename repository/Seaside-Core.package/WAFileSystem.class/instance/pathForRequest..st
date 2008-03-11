private
pathForRequest: aRequest
	^ self directory , (aRequest url allButFirst: self basePath size)