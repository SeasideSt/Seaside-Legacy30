initialize-release
initialize

	super initialize.
	userName := UIManager default
		request: 'SqueakSource User Name (empty is fine)?'
		initialAnswer: ''.
	password := UIManager default
		request: 'SqueakSource Password (empty is fine)?'
		initialAnswer: ''.
	seaside29 := self seaside29.
	komHttpServer := self komHttpServer.
	baseTests := TestCase suite tests.
	baseUndeclared := Undeclared keys.