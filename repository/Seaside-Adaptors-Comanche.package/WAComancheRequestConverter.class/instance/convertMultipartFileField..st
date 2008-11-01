private
convertMultipartFileField: aChunk
	^(self fileClass fromChunk: aChunk)
		fileName: (self decodeUrl: aChunk fileName);
		yourself