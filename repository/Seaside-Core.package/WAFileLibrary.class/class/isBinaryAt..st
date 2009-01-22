private
isBinaryAt: aPath
	^self isBinary: (WAPlatform current localNameOf: aPath)