accessing
unregister: aServerAdaptor
	self stop: aServerAdaptor.
	^ adaptors remove: aServerAdaptor