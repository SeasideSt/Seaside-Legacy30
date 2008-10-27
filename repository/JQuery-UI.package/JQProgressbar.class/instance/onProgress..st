events
onProgress: anObject
	"Callback function triggered when the progressbar is progressing."

	self optionAt: 'progress' put: anObject asFunction