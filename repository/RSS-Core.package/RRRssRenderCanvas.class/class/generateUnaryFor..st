generating-tags
generateUnaryFor: aCollection
	(self includesSelector: aCollection second) ifFalse: [
		self 
			compile: aCollection second, '
	^ self ', (self patternFor: aCollection first)
			classified: aCollection fourth ]