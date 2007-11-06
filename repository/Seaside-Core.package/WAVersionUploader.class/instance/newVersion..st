rendering
newVersion: aWorkingCopy
	| version stream |
	version := [ aWorkingCopy newVersion ]
		on: MCVersionNameAndMessageRequest
		do: [ :request | request resume: (Array with: request suggestedName with: '') ].
	stream := RWBinaryOrTextStream on: String new.
	version fileOutOn: stream.
	self session respond: [ :actionUrl |
		url addToPath: version fileName.
		self session redirectResponseFor: actionUrl ].
	self session returnResponse: (WAResponse new
		contentType: 'application/octet-stream';
		nextPutAll: stream contents;
		yourself)