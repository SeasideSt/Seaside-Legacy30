values
valueAt: aSymbol addAll: additions removeAll: removals
	^ self
		storeValue: ((WACollectionValue key: aSymbol) additions: additions; removals: removals; yourself)
		forAttribute: (self attributeAt: aSymbol)