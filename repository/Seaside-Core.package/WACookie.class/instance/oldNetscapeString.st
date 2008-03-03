writing
oldNetscapeString
	^String streamContents: [ :stream |
		self writeKeyValueQuoted: false on: stream.
		self writeExpiresOn: stream.
		self writePathQuoted: false on: stream.
		self writeDomainQuoted: false on: stream.
		self writeSecureOn: stream.
		self writeHttpOnlyOn: stream ]