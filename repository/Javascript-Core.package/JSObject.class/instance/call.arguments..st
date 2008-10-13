decorations
call: aString arguments: aCollection
	"Call the method aString with aCollection as its arguments."

	self access: aString; apply: aCollection