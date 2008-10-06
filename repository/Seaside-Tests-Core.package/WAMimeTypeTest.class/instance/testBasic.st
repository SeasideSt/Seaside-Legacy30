testing
testBasic
	| mimeType |
	mimeType := WAMimeType fromString: 'image/jpeg'.
	self assert: mimeType main = 'image'.
	self assert: mimeType sub = 'jpeg'.
	self assert: mimeType parameters isEmpty.
	self assert: mimeType seasideString = 'image/jpeg'