rendering
renderContentOn: html
	html paragraph: 'The following two anchors should trigger flows with 5 steps each. The stack should neither grow nor shrink. Backtracking and spawning of windows should properly work.'.
	html paragraph: [
		html anchor
			callback: [ self goAnchors ];
			with: 'go anchors'.
		html break.
		html anchor
			callback: [ self goButtons ];
			with: 'go buttons' ]