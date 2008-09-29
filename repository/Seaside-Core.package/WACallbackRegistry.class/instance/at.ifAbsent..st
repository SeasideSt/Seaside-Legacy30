accessing
at: key ifAbsent: aBlock
	^ callbacks at: key ifAbsent: aBlock