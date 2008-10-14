decorations
call: aString withArguments: anArray
	"Call the method aString with anArray as arguments."

	self access: aString; apply: anArray