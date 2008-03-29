javascript
setSelectionFrom: aStartInteger to: aStopInteger
	"Insert the javascript for setting the selection"
	| aStream |
	self ensureId.
	aStream := (String new: 30) writeStream.
	aStream
		nextPutAll: 'setSelection(''';
		nextPutAll: self id;
		nextPutAll: ''''.
	aStartInteger isNumber
		ifTrue: [aStream nextPut: $,; print: aStartInteger]
		ifFalse: [aStream nextPutAll: ',1'].
	aStopInteger isNumber
		ifTrue: [aStream nextPut: $,; print: aStopInteger ].
	aStream nextPut: $).
	self context addLoadScript: aStream contents