public
asMIMEDocumentType: type
	"Lazy caching."
	^mimeDocument ifNil: [
		mimeType := type.
		mimeDocument := self
				mimeDocumentOfType: mimeType
				from: fullFileName]