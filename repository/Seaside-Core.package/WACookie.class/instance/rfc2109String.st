writing
rfc2109String
	^String streamContents: [ :stream |
		self writeKeyValueQuoted: true on: stream.
		self writeCommentOn: stream.
		self writeMaxAgeOn: stream.
		self writePathQuoted: true on: stream.
		self writeDomainQuoted: true on: stream.
		self writeSecureOn: stream.
		self writeHttpOnlyOn: stream.
		self writeVersionOn: stream ]