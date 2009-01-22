private
addFileAt: aPath contents: aByteArrayOrString
	self
		addFileNamed: (WAPlatform current localNameOf: aPath)
		contents: aByteArrayOrString