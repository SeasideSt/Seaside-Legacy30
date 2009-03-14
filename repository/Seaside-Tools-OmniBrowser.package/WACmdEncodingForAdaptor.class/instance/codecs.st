accessing
codecs
	^ WACodec allCodecs asSortedCollection: [ :a :b | a name < b name ]