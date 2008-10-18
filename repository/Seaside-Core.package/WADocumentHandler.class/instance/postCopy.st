copying
postCopy
	super postCopy.
	"It seems reasonable to leave our 'document' instvar pointing to the same object.
	We let the mimeDocument be regenerated."
	mimeDocument := nil.
	mimeType := mimeType copy.
	fileName := fileName copy.