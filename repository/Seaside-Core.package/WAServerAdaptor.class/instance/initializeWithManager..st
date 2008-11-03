initialization
initializeWithManager: aServerManager
	self initialize.
	manager := aServerManager.
	codec := self defaultCodec.
	port := self defaultPort.