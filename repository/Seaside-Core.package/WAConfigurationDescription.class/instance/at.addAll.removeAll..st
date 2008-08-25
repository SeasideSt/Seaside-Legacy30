values
at: aSymbol addAll: additions removeAll: removals
	self addValue: ((WAAddRemoveExpression key: aSymbol)
			additions: additions;
			removals: removals;
			yourself)