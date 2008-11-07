rendering
renderErrorOn: html 
	html heading: 'Error'.
	html paragraph: 'The link should display an error walkback. Opening a debugger should work. Closing the debugger window should not lock the session.'.
	html anchor
		callback: [ self raiseError ];
		with: 'Raise error'