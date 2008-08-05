instance-creation
key: keySymbol comment: commentString
	^ self basicNew
		initializeWithKey: keySymbol
		group: nil
		comment: commentString