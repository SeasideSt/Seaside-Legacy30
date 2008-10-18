accessing
response
	| response |
	response := WAResponse new.
	response contents: self mimeDocument contentStream.
	response contentType: (mimeType ifNil: [ self mimeDocument contentType seasideMimeType ]).
	response cacheForever.
	self fileName isNil ifFalse: [ response attachmentWithFileName: self fileName ].
	^ response