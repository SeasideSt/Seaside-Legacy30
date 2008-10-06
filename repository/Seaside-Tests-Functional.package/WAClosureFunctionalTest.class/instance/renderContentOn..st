rendering
renderContentOn: html
	html paragraph: 'The following two anchors should trigger a 3 step flow. Backtracking and spawning of windows should properly work.'.
	html paragraph: [
		html anchor
			callback: [ self go ];
			with: 'Go'.
		html break.
		html anchor
			callback: [ self ensure ];
			with: 'Go with ensure' ]