rendering
renderContentOn: html
	html iframe
		contents: counter.
	html break; break.
	html iframe
		url: (WADispatcher default entryPointAt: WACounter entryPointName) baseUrl.
	html break; break.
	html iframe
		document: WATestingFiles default samplePng
		mimeType: 'image/png'