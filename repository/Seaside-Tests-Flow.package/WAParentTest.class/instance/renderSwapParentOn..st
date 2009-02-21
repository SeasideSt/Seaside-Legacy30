rendering
renderSwapParentOn: html
	html paragraph: [
		html anchor
			callback: [ self go ];
			with: 'swap parent' ]