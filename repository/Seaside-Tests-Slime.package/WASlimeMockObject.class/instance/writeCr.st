accessing
writeCr
	| stream |
	stream := WriteStream on: ''.
	stream cr.
	stream nextPut: Character cr