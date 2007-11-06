private
addFileAt: aPath contents: aByteArrayOrString
	self
		addFileNamed: (SeasidePlatformSupport localNameOf: aPath)
		contents: aByteArrayOrString