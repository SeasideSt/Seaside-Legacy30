rendering
renderContentOn: html
	uid := html nextId.
	html div class: self cssClass; 
		with: [html div class: 'main'; with: [
				self renderTitleOn: html.
				 self renderBodyOn: html ] ] 