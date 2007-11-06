processing
updateUrl: aUrl
	super updateUrl: aUrl.
	self model selectedClass ifNotNilDo: [ :class |
		aUrl addParameter: 'class' value: class fullName.
		self model metaClassIndicated
			ifTrue: [ aUrl addParameter: 'meta' ] ].
	self model selectedMessageName ifNotNilDo: [ :method |
		aUrl addParameter: 'method' value: method ]