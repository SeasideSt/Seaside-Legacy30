rendering
renderContentOn: html
	html paragraph: 'With #contents:'.
	html iframe
		contents: calendar.
	html paragraph: 'With #url:'.
	html iframe
		url: (WATestingFiles / #samplePng).
	html paragraph: 'With #document:'.
	html iframe
		document: WATestingFiles default samplePng
		mimeType: 'image/png'