testing
setUp
	super setUp.
	manager := WAServerManager new.
	adaptor := WATestServerAdaptor new.
	adaptor port: 12345.
	adaptor running.
	self assert: adaptor isRunning.
	manager register: adaptor.
	self assert: (manager adaptors includes: adaptor).
