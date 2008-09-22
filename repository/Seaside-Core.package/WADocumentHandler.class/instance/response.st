accessing
response
	| response |
	response := WAResponse new.
	response contents: self mimeDocument contentStream.
	response contentType: (mimeType ifNil: [ self mimeDocument contentType toMimeType ]).
	response cacheForever.
	fileName ifNotNil: [ response attachmentWithFileName: fileName ].
	^ response