private
addFileNamed: aFilename contents: aByteArrayOrString
	| selector |
	selector := self asSelector: aFilename.
	self cache removeKey: selector ifAbsent: [].
	(self isBinary: aFilename)
		ifTrue: [ self compileBinary: aByteArrayOrString selector: selector ]
		ifFalse: [ self compileText: aByteArrayOrString selector: selector ]
