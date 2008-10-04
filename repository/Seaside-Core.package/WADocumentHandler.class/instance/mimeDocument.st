accessing
mimeDocument
	^ mimeDocument ifNil: [
		mimeDocument := mimeType isNil
			ifTrue: [ document seasideMimeDocument ]
			ifFalse: [ document seasideMimeDocumentType: mimeType ] ]