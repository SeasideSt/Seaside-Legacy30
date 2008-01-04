private
basicConnect: aRequest
	| root |
	socket := aRequest responseStream encodingSocket.
	socket pushData: (String streamContents: [ :stream |
		root := WAHtmlRoot context: context.
		WAResponse new
			contentType: ((WAMimeType main: 'text' sub: 'html') charset: 'utf-8'; yourself);
			cacheForever;
			contents: (String streamContents: [ :contents |
				WACurrentSession
					use: session
					during: [ session updateRoot: root. root open: (WAHtmlStreamDocument new stream: contents) ].
				contents nextPutAll: (String new: 1024 withAll: Character space) ]);
			writeOn: stream ])