accessing
id

	"Convert to a String in case it was supplied as a Symbol;
		like in WALinkSubmitTest "
	^ self attributes
		at: 'id'
		ifPresent: [:value | value displayString ]