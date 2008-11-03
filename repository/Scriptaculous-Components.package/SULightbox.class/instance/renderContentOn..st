rendering
renderContentOn: html
	self renderNextOn: html.
	html div id: 'overlay'.
	html div
		id: 'lightbox';
		style: 'display: none';
		with: self delegate.
	self requestContext loadScripts
		addFirst: self lighter