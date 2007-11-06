convenience
onError: aString
	self attributes at: 'onerror' append: aString separator: ';'