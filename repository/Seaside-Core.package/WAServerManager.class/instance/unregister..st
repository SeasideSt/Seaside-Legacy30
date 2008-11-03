accessing
unregister: aServerAdaptor
	"This should only be called by WAServerAdaptor>>unregister"
	self stop: aServerAdaptor.
	^ adaptors remove: aServerAdaptor