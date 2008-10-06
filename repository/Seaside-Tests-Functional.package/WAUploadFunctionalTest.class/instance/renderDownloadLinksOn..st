rendering
renderDownloadLinksOn: html 
	html anchor
		document: file contents
			mimeType: file contentType
			fileName: file fileName;
		with: file fileName , ' (' , file contentType seasideString , ')'.
	html break.
	html anchor
		document: file contents;
		with: file fileName