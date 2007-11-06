accessing
at: aKey
	^ self at: aKey ifAbsent: [ self error: 'No entry for ' , aKey ]