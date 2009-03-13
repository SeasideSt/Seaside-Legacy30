*seaside-adaptors-comanche
initializeFromChunk: aChunk
	self initialize.
	self contentType: aChunk contentType seasideMimeType.
	self contents: (String streamContents: [ :stream |
		aChunk saveToStream: stream ]).