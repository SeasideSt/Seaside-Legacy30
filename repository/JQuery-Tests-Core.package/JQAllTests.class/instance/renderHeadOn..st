rendering
renderHeadOn: html
	html div class: 'content-head'; with: [
		html heading level: 2; with: self heading.
		html paragraph: self slogan ]