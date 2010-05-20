testing
includesUnsafeUrlCharacter: aString
	"Answer whether the given string contains a character that is not URL safe.
	May answer true even if only safe charaters are in the string."
	1 to: aString size do: [ :index |
		('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.~' includes: (aString at: index))
			ifFalse: [ ^ false ] ].
	^ false