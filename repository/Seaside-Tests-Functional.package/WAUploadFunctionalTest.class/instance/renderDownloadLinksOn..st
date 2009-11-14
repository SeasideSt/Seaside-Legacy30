rendering
renderDownloadLinksOn: html
	html paragraph: [
		| contents |
		self renderIsByteArray: file rawContents on: html.
		html break.
		contents := file contentType isBinary
			ifTrue: [ file rawContents ]
			ifFalse: [
				"we don't use #contentsDecoded because no browser sends them because operating systems suck at files"
				file contentsDecodedUsing: 'ISO-8859-1' ].
		html anchor
			document: contents
				mimeType: file contentType
				fileName: file fileName;
			with: file fileName , ' (' , file contentType greaseString , ')'.
		html break.
		html anchor
			document: file rawContents;
			with: file fileName ]