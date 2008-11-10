creation
expression: aString context: anObject
	"This function accepts a string containing a CSS selector which is then used to match a set of elements."
	
	^ JQueryInstance on: canvas constructor: (Array with: aString with: anObject)