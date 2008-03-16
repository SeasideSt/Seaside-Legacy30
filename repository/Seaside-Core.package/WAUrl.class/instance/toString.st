converting
toString

	^String streamContents: [ :stream |
		self printOn: stream ]