rendering
renderContentOn: html
	html paragraph: 'Clicking home should always bring back the root component.'.
	html paragraph: [
		html anchor
			callback: [ main call: (self message: 'Called Component') ];
			with: 'call'.
		html space.
		html anchor
			callback: [ main home ];
			with: 'home' ].
	html render: main