handling
handleFiltered: aRequestContext named: aString
	(self 
		entryPointAt: aString 
		ifAbsent: [ aRequestContext responseGenerator notFound; respond ])
			handle: aRequestContext