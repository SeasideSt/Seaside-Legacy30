actions
handleHalt: anException
	"Note that different platforms may use different classes of exceptions to
	represent a halt."
	^ self handleDefault: anException