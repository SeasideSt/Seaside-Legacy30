streaming
nextPutAll: aStringOrByteArray
	"Append the elements of aCollection to the body part of the response."
	
	self stream nextPutAll: aStringOrByteArray