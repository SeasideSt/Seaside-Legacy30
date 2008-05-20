rendering
renderContentOn: html
	self renderOwnerOn: html.
	html div id: 'overlay'.
	html div
		id: 'lightbox';
		style: 'display: none';
		with: self delegate.
	self requestContext loadScripts
		addFirst: self lighter