printing
encodeOn: aDocument
	aDocument nextPutAll: '<?xml-stylesheet'.
	
	attributes encodeOn: self.
	self childrenDo: [ :each | each encodeOn: aDocument ].
	
	aDocument nextPutAll: '?>'