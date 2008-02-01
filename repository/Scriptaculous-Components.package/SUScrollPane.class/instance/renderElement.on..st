rendering
renderElement: element on: html
	html div class: 'element'; style: 'height:', elementHeight asString , 'px';
		with: [html anchor callback: [self lightbox: (WAFormDialog new addMessage: element text; yourself).]; with: element label.
				html break. html text: element text.]