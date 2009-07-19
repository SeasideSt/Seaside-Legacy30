creation
expression: aString
	"This function accepts a string containing a CSS selector which is then used to match a set of elements."

	^ (JQueryInstance
		context: self renderContext
		constructor: (Array with: aString))
			rendererClass: self rendererClass;
			yourself