convenience
fieldsAt: key ifPresent: aBlock
	"Returns the string value associated to the key in the argument given to your webapplication. The argument can have been sent by a form or written at the end of the url (using ...?key=value construction). If the key is present, execute the block and give it the value as a parameter. Otherwise, answer nil."
	^ self session fieldsAt: key ifPresent: aBlock