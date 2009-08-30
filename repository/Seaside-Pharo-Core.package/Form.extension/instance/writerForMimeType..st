*seaside-pharo-core
writerForMimeType: mimeType
	| sub |
	mimeType main ~= 'image'
		ifTrue: [ ^nil ]. 
	"First token is assumed to be 'image'"
	sub := mimeType sub.
	sub = 'jpg' ifTrue: [ ^JPEGReadWriter2 ].
	sub = 'jpeg' ifTrue: [ ^JPEGReadWriter2 ].
	sub = 'png' ifTrue: [ ^PNGReadWriter ].
	sub = 'pcx' ifTrue: [ ^PCXReadWriter ].
	sub = 'bmp' ifTrue: [ ^BMPReadWriter ].
	sub = 'gif' ifTrue: [ ^GIFReadWriter ].
	^nil