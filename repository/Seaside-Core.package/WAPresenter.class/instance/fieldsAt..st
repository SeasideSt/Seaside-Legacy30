convenience
fieldsAt: key
	"Returns the string value associated to the key in the argument given to your webapplication. The argument can have been sent by a form or written at the end of the url (using ...?key=value construction). If key is not found, an error is sent."
	^ self session fieldsAt: key