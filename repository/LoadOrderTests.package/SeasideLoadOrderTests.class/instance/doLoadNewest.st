load and test
doLoadNewest
	self cacheRepositories.
	self askForTesting.
	self groups do: [:aList | 
		self 
			loadNewestPackages: aList;
			doTests;
			yourself.
	].
