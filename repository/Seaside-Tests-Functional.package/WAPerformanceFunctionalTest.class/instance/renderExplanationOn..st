rendering
renderExplanationOn: html
	html paragraph: [
		html text: 'This test serves two purposes:'.
		html orderedList: [
			html listItem: 'Test rendering speed'.
			html listItem: 'Test all different html elements'.
			] ]