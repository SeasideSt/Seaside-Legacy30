private
basicConnect: aRequestContext
	| root |
	WACurrentRequestContext use: aRequestContext during: [
		socket := aRequestContext responseStream encodingSocket.
		socket pushData: (String streamContents: [ :stream |
			root := WAHtmlRoot context: context.
			WAResponse new
				contentType: ((WAMimeType main: 'text' sub: 'html') 
					charset: aRequestContext application charSet;
					yourself);
				cacheForever;
				contents: (String streamContents: [ :contents |
					session updateRoot: root. 
					(WAHtmlDocument
						on: contents
						codec: aRequestContext codec)
							open: root.
					contents nextPutAll: (String new: 1024 withAll: Character space) ]);
				writeOn: stream ]) ]