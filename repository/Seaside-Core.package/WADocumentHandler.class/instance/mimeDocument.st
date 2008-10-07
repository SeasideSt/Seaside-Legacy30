accessing
mimeDocument
	^ mimeDocument ifNil: [
		mimeDocument := mimeType isNil
			ifTrue: [ self document seasideMimeDocument ]
			ifFalse: [ self document seasideMimeDocumentType: mimeType ] ]