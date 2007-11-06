rendering
renderContentOn: html
	self maxPages > 0 ifTrue: [
		html div
			id: 'batch';
			with: [
				self renderPreviousOn: html.
				self renderPagesOn: html.
				self renderNextOn: html ] ]