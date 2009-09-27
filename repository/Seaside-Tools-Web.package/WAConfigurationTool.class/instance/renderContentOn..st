rendering
renderContentOn: html
	html div style: 'border:1px solid #222';
		with: [
			self renderHeadingOn: html.
			self renderTopBarOn: html.
			html div style: 'padding:5px';
				with: [ self renderComponentOn: html ] ]