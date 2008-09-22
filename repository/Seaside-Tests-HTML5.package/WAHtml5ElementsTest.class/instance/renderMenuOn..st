rendering
renderMenuOn: html
	html heading level2; with: '<menu>'.

	html menu: [
		html command label: 'Do 1st Command'.
		html command label: 'Do 2nd Command'.
		html command label: 'Do 3rd Command' ]