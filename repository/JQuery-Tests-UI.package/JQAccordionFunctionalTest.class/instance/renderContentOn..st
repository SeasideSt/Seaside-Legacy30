rendering
renderContentOn: html
	html div
		script: (html jQuery new accordion autoHeight: false);
		with: [
			self berries keysAndValuesDo: [ :name :description |
				html anchor: name.
				html div: description ] ]