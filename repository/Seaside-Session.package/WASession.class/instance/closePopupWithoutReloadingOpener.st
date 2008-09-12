responding
closePopupWithoutReloadingOpener
	^ self respond: [ :url |
		WAResponse new
			nextPutAll: '<html><script>';
			nextPutAll: 'self.close();';
			nextPutAll: '</script></html>';
			yourself]