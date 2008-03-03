writing
rfc2965String
	^String streamContents: [ :stream |
		self writeKeyValueQuoted: true on: stream.
		self writeCommentOn: stream.
		self writeCommentUrlOn: stream.
		self writeMaxAgeOn: stream.
		self writePathQuoted: true on: stream.
		self writePortsOn: stream.
		self writeDomainQuoted: true on: stream.
		self writeSecureOn: stream.
		self writeHttpOnlyOn: stream.
		self writeDiscardOn: stream.
		self writeVersionOn: stream ]