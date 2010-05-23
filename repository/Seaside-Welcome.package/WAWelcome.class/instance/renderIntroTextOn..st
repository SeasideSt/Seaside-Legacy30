rendering
renderIntroTextOn: html
	html div
		class: #introText;
		with: [
			html heading level1; with: 'Welcome'.
			html paragraph: 'Congratulations you have a working Seaside image.'
		]