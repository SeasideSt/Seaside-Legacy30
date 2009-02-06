initialize-release
doLoad

	self groups do: [:aList | 
		self 
			loadPackages: aList;
			doTests;
			showUndeclared;
			yourself.
	].
