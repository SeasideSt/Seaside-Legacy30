converting
seasideMimeDocumentType: aMimeType
	aMimeType = contentType ifTrue: [ ^self ].
	^self class contentType: aMimeType content: content