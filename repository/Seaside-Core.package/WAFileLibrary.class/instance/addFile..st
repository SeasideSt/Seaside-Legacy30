actions
addFile: aFile 
	"adds a file to the receiver

	aFile an instance of of WAFile"
	| contents |
	aFile isNil ifTrue: [ ^ self	"in case no file was selected for uploading" ].
	contents := (self class isBinary: aFile fileName) 
		ifTrue: [ aFile contents ]
		ifFalse: [ GRPlatform current convertToSmalltalkNewlines: aFile contents ].
	self class 
		addFileNamed: aFile fileName
		contents: contents