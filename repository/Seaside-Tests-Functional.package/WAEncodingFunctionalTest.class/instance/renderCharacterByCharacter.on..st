rendering
renderCharacterByCharacter: aString on: html
	"Display aString character by character, but wrap each character into a span so it ends up individually in the output stream. If the codex does not convert to the internal encoding of Smalltalk the result is broken. Either choose an appropriate codex or be aware of the concequences."
	
	aString 	do: [ :each | html span: each ]