initialize-release
initializeOn: aDispatcher
	self initialize.
	component := (WAConfigurationManager on:aDispatcher)