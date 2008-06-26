rendering
renderBodyOn: html
	html div class: 'title'; id: self titleId; with: [self renderTitleOn: html].
	html div id: self containerId
	" with: [self renderComponentOn: html]"