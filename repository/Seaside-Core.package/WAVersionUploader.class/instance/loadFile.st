actions
loadFile
	| reader version |
	reader := MCVersionReader readerClassForFileNamed: file fileName.
	reader ifNil: [self inform: file fileName, ' is not in a known format'].
	version := reader versionFromStream: file contents asByteArray readStream.
	version load