public
asMIMEDocumentType: type
	"Lazy caching."
	^mimeDocument ifNil: [
		mimeType := type.
		mimeDocument := SeasidePlatformSupport
				mimeDocumentOfType: mimeType
				from: fullFileName]