responding
closePopupAndContinue
	^ self respond: [ :url |
		WAResponse new
			nextPutAll: '<html><script>';
			nextPutAll: 'self.close();';
			nextPutAll: 'self.opener.location=', url displayString printString;
			nextPutAll: '</script></html>';
			yourself]