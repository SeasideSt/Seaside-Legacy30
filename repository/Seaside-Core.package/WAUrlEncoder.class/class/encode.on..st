private
encode: aCharacter on: aStream
	| printer |
	('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.~' includes: aCharacter)
		ifTrue: [ ^ aStream nextPut: aCharacter ].
	aStream nextPut: $%.
	printer := WANumberPrinter new.
	printer base: 16; padding: $0; digits: 2; uppercase.
	printer print: aCharacter seasideInteger on: aStream