rendering
renderContentOn: html
	html paragraph: 'The following two anchors should trigger a 3 step flow. Backtracking and spawning of windows should properly work.'.
	html paragraph: [
		html anchor
			callback: [ self go ];
			with: 'Go' ].

	html paragraph: 'The "Go with ensure" test is expected to fail right now, as the ensure fires during rendering. The ensure does not survive across continuations at the present time.'.
	html paragraph: [
		html anchor
			callback: [ self ensure ];
			with: 'Go with ensure' ]