responding
closePopup
	^ self respond: [ :url |
		WAResponse new
			nextPutAll: '<html><script>';
			nextPutAll: 'self.close();';
			nextPutAll: 'self.opener.location=self.opener.location';
			nextPutAll: '</script></html>';
			yourself]