load and test
doLoad

	self groups do: [:aList | 
		self 
			loadPackages: aList;
			doTests;
			yourself.
	].
