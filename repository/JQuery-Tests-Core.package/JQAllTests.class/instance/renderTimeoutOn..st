rendering
renderTimeoutOn: html
	"Warn the user if an error occurs during an AJAX action (mostly this is a session timeout) and refresh the current page."

	html document addLoadScript: (html jQuery ajaxSetup
		onError: (html javascript
			alert: 'The session has expired.';
			refresh))