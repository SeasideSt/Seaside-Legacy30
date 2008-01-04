conveniance
goto: anUrl
	self add: (SUStream new nextPutAll: 'window.location='; javascript: anUrl)