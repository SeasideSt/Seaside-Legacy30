actions
loadFile
	| reader version |
	file ifNil: [
		self inform: 'no file selected' onAnswer: [ :v | ].
		^self ].
	reader := MCVersionReader readerClassForFileNamed: file fileName.
	reader ifNil: [
		self inform: file fileName, ' is not in a known format' onAnswer: [ :v | ].
		^ self ].
	version := reader versionFromStream: file contents asByteArray readStream.
	version load