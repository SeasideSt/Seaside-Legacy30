actions
loadURL
	| stream version |
	stream := url asUrl retrieveContents content asByteArray readStream .
	version := (MCVersionReader readerClassForFileNamed: url) versionFromStream: stream.
	version load