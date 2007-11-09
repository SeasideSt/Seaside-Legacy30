accessing
id

	"Convert to a String in case it was supplied as a Symbol (=> #asString) like in WALinkSubmitTest "
	^ self attributes
		at: 'id'
		ifPresent: [ :value | value asString ]