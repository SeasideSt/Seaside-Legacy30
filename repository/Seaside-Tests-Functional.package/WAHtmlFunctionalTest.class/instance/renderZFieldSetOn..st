rendering
renderZFieldSetOn: html
	| url |
	url := html context
		urlForDocument: (WATestingFiles default inspectorPng)
		mimeType: 'image/png'
		fileName: 'Debug.jpg'.
	html fieldSet
		legend: 'Various images in a fieldset';
		with: [html image url: url; altText: 'Halo-Debug'.
			html space.
			html break.
			html image url: WATestingFiles / #styleeditorPng; width: '80%'; altText: 'Style Editor'.
			html break.
			html image url: WATestingFiles / #styleeditorPng; height: '50px'; altText: 'Style Editor'.
			html break.
			html image url: WATestingFiles / #styleeditorPng; width: '250px'; height: '60px'; altText: 'Style Editor' ]