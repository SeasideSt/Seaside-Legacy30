*scriptaculous-core
passenger: anObject
	"Assign a passenger object to the receiver. This is mostly used to keep a mapping between DOM elements and Smalltalk objects for drag and drop operations."

	self id: SUSortable passengerPrefix , (canvas context storePassenger: anObject)