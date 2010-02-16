processing
updateUrl: aUrl
	super updateUrl: aUrl.
	self model selectedClass isNil ifFalse: [
		aUrl addParameter: 'class' value: self model selectedClass fullName.
		self model metaClassIndicated
			ifTrue: [ aUrl addParameter: 'meta' ] ].
	self model selectedMessageName isNil 
		ifFalse: [ aUrl addParameter: 'method' value: self model selectedMessageName ]