accessing
writeLf
	| stream |
	stream := WriteStream on: ''.
	stream lf.
	stream nextPut: Character lf