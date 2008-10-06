testing
testIe6
	| accept accpetLanguage acceptEncoding |
	accept := WAAccept fromString: 'image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, application/vnd.ms-excel, application/msword, application/vnd.ms-powerpoint, application/x-shockwave-flash, */*'.
	self assert: accept size = 9.
	self assert: accept at: 1 main: 'image' sub: 'gif' quality: Float infinity.
	self assert: accept at: 2 main: 'image' sub: 'x-xbitmap' quality: Float infinity.
	self assert: accept at: 3 main: 'image' sub: 'jpeg' quality: Float infinity.
	self assert: accept at: 4 main: 'image' sub: 'pjpeg' quality: Float infinity.
	self assert: accept at: 5 main: 'application' sub: 'vnd.ms-excel' quality: Float infinity.
	self assert: accept at: 6 main: 'application' sub: 'msword' quality: Float infinity.
	self assert: accept at: 7 main: 'application' sub: 'vnd.ms-powerpoint' quality: Float infinity.
	self assert: accept at: 8 main: 'application' sub: 'x-shockwave-flash' quality: Float infinity.
	self assert: accept at: 9 main: '*' sub: '*' quality: Float infinity.
	
	acceptEncoding := WAAcceptEncoding fromString: 'gzip, deflate'.
	self assert: acceptEncoding size = 2.
	self assert: acceptEncoding at: 1 encoding: 'gzip' quality: Float infinity.
	self assert: acceptEncoding at: 2 encoding: 'deflate' quality: Float infinity.
	
	accpetLanguage := WAAcceptLanguage fromString: 'de-ch'.
	self assert: accpetLanguage size = 1.
	self assert: accpetLanguage at: 1 language: 'de' country: 'ch' quality: Float infinity