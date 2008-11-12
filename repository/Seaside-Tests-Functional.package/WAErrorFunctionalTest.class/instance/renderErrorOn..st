rendering
renderErrorOn: html 
	html heading: 'Error'.
	html paragraph: 'Behaviour is handler-dependent. If a Debugger is opened, closing the debugger window should display a message indicating that request processing was terminated and should not lock the session. Proceeding from the Debugger should be handled gracefully but behaviour is platform-dependent. On Squeak, you should see an error page in the browser. On VW, you should see a message indicating that nil was returned.'.
	html anchor
		callback: [ self raiseError ];
		with: 'Raise error'