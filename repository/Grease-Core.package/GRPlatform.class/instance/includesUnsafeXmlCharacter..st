testing
includesUnsafeXmlCharacter: aString
	"Answer whether the given string contains a character that needs to be escapted for XML.
	May answer true even if no character that needs to be escaped in the the XML."
	1 to: aString size do: [ :index |
		('"<&>' includes: (aString at: index))
			ifTrue: [ ^ true ] ].
	^ false