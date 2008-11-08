rendering
renderErrorOn: html 
	html heading: 'Error'.
	html paragraph: 'The link should display an error walkback. Opening a debugger should work. Closing the debugger window should not lock the session. Proceeding the error should display a friendly error page in the browser.'.
	html anchor
		callback: [ self raiseError ];
		with: 'Raise error'