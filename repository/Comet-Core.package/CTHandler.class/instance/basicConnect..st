private
basicConnect: aRequestContext
	| root |
	WACurrentRequestContext use: aRequestContext during: [
		socket := aRequestContext request responseStream encodingSocket.
		socket pushData: (String streamContents: [ :stream |
			root := WAHtmlRoot context: context.
			WAResponse new
				contentType: ((WAMimeType main: 'text' sub: 'html') 
					charset: aRequestContext application charSet;
					yourself);
				cacheForever;
				contents: (String streamContents: [ :contents |
					session updateRoot: root. 
					root open: (WAHtmlStreamDocument new stream: contents).
					contents nextPutAll: (String new: 1024 withAll: Character space) ]);
				writeOn: stream ]) ]