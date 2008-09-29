initialize-release
initialize
	super initialize.
	count := WAValueHolder with: 1.
	callbacks := WACallbackRegistry context: self