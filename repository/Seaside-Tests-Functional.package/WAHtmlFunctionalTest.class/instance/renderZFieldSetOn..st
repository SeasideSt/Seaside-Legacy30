rendering
renderZFieldSetOn: html
	| url |
	url := html context
		urlForDocument: (WATestingFiles default samplePng)
		mimeType: 'image/png'
		fileName: 'Debug.jpg'.
	html fieldSet
		legend: 'Various images in a fieldset';
		with: [html image url: url; altText: 'Halo-Debug'.
			html space.
			html break.
			html image url: WATestingFiles / #samplePng; width: '80%'; altText: 'Style Editor'.
			html break.
			html image url: WATestingFiles / #samplePng; height: '50px'; altText: 'Style Editor'.
			html break.
			html image url: WATestingFiles / #samplePng; width: '250px'; height: '60px'; altText: 'Style Editor' ]