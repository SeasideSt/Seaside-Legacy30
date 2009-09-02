initialize-release
initialize

	super initialize.
	userName := UIManager default
		request: 'SqueakSource User Name (empty is fine)?'
		initialAnswer: ''.
	password := UIManager default
		request: 'SqueakSource Password (empty is fine)?'
		initialAnswer: ''.
	seaside30 := self seaside30.
	komHttpServer := self komHttpServer.
	doTests := UIManager default confirm: 'Run tests as packages are loaded?'.
	doTests ifTrue: [
		baseTests := TestCase suite tests.
		baseUndeclared := Undeclared keys.
	].
