private
fileSelectors
	^ (self class selectors
		select: [ :each | self isFileSelector: each ])
		removeAllFoundIn: self nonFileSelectors;
		yourself