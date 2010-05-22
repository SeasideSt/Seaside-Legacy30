testing
includesUnsafeUrlCharacter: aString
	"Answer whether the given string contains a character that is not URL safe.
	May answer true even if only safe charaters are in the string.
	
	Platforms may override this for performance."
	^ true