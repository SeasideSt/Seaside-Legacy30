convenience
goto: anUrl 
	self add: (JSStream new
		nextPutAll: 'window.location=';
		javascript: anUrl)