*Seaside-Canvas
closeThisPopup
	^ self respond:
		(WAResponse new
			nextPutAll: '<html><script>';
			nextPutAll: 'self.close();';
			nextPutAll: '</script></html>';
			yourself)