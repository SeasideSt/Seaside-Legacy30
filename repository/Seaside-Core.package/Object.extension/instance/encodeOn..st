*seaside-core
encodeOn: anXmlDocument
	"Sent by WAXmlDocument to cause the receiver to output itself on the document.
	It would thus be clearer if the method selector indicated this a bit more specifically
	so that implementors know they can rely on the API of WAXmlDocument."
	anXmlDocument print: self greaseString