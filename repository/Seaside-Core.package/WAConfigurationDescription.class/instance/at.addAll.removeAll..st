values
at: aSymbol addAll: additions removeAll: removals
	self addValue: ((WACollectionValue key: aSymbol)
			additions: additions;
			removals: removals;
			yourself)