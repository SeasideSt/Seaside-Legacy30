rendering
renderFigureOn: html
	html heading level2; with: '<figure>'.
	html figure: [
		html legend: 'A Sample Icon'.
		html space.
		html image url: WATestingFiles / #samplePng; altText: 'sample' ]