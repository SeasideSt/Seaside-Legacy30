accessing
response
	| response |
	response := WAResponse new.
	response contents: self mimeDocument contentStream.
	response contentType: (mimeType ifNil: [self mimeDocument contentType]).
	response headerAt: 'Expires' put: 'Thu, 01 Jan 2095 12:00:00 GMT'.
	fileName ifNotNil: [ response attachmentWithFileName: fileName ].
	^ response