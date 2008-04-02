convenience
submitFormNamed: aString
	"Submits a form with the id aString."

	self onClick: 'document.forms[' , aString printString , '].submit()'