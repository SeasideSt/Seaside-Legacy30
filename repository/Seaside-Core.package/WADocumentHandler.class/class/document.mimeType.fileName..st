instance creation
document: anObject mimeType: aMimeType fileName: aString
	^ self document: (
		(anObject seasideMimeDocumentType: aMimeType)
		fileName: aString;
		yourself)