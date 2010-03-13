rendering
renderFigureOn: html
	html heading level2; with: '<figure>'.
	html figure: [
		html legend: 'The Profiler Icon'.
		html space.
		html image url: WAToolFiles / #profilerPng; altText: 'profiler' ]