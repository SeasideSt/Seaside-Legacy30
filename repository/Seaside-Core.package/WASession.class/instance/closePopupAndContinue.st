responding
closePopupAndContinue
	^ self respond: 
		[ :url | 
		WAResponse new
			nextPutAll: '<html><script>';
			nextPutAll: 'self.close();';
			nextPutAll: 'self.opener.location=';
			nextPutAll: url seasideString printString;
			nextPutAll: '</script></html>';
			yourself ]