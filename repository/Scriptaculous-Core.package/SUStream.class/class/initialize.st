string-encoding
initialize
	| escapes |
	JavascriptCharacters := Array new: 127.
	0 to: 31 do: [ :each |
		JavascriptCharacters
			at: each + 1
			put: '\x' , ((each printStringBase: 16)
				padded: #left to: 2 with: $0) ].
	32 to: 126 do: [ :each |
		JavascriptCharacters
			at: each + 1
			put: each asCharacter ].
	"don't use #pairsDo: doesn't work for JPMorgan"
	escapes := #( 0 '\0' 7 '\a' 8 '\b' 9 '\t' 10 '\n' 12 '\f' 13 '\r' 39 '\''' 92 '\\' ).
	1 to: escapes size - 1 by: 2 do: [ :index |
		JavascriptCharacters
			at: (escapes at: index) + 1
			put: (escapes at: index + 1) ]