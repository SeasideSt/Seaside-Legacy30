streaming
nextPutAll: aString
	"Append the elements of aCollection to the body part of the response."

	self flush.
	externalStream nextPutAll: aString