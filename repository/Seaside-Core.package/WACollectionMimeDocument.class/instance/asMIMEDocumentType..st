converting
asMIMEDocumentType: aMimeType
	aMimeType = contentType ifTrue: [ ^self ].
	^self class contentType: aMimeType content: content