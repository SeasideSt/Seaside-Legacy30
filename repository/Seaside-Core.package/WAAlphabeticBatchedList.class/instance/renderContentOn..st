rendering
renderContentOn: html
	items isEmpty ifFalse: [
		html div
			id: 'batch';
			with: [
				self renderPreviousOn: html.
				self renderPagesOn: html.
				self renderNextOn: html ] ]