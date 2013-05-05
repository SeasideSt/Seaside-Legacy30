initialization
initializeEncoding
	| printer escapes |
	printer := GRNumberPrinter new.
	printer base: 16; padding: $0; digits: 4.
	JavascriptCharacters := Array new: 127.
	"write control characters"
	0 to: 31 do: [ :index | 
		JavascriptCharacters 
			at: index + 1
			put: '\u', (printer print: index) ].
	32 to: 126 do: [ :index | 
		JavascriptCharacters 
			at: index + 1
			put: index asCharacter ].
	"overwrite named (control) characters"
	escapes := #( 8 '\b' 9 '\t' 10 '\n' 12 '\f' 13 '\r' 34 '\"' 92 '\\' ).
	1 to: escapes size - 1 by: 2 do: [ :index | 
		JavascriptCharacters 
			at: (escapes at: index) + 1
			put: (escapes at: index + 1) ]