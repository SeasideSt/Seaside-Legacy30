callbacks
callback: aBlock
	"The parameter for the image-map callback must be the last one, as the web-browser will use the same name and replace it with the coordinates."

	self url addParameter: (canvas callbacks registerImageMapCallback: aBlock) value: ''