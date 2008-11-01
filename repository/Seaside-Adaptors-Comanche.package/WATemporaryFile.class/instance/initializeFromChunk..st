initialize-release
initializeFromChunk: aChunk
	"This is where we actually read the file contents chunk wise
	and save it to disk."

	| stream |
	stream := StandardFileStream newFileNamed: (self temporaryDirectory fullNameFor: self temporaryFileName).
	[	stream binary.
		fileSize := aChunk saveToStream: stream ]
			ensure: [ stream close ]