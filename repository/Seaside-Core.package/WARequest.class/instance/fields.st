accessing
fields
	^ WAMergedHeaderFields on: (Array with: self postFields with: self queryFields)