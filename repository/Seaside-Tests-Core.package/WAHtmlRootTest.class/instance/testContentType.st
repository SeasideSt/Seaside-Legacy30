testing
testContentType
	self
		assert: [ :html |
			html meta contentType: 'application/xhml+xml' seasideMimeType  ]
		gives: '<title></title><meta http-equiv="Content-Type" content="application/xhml+xml"/>'.
	self
		assert: [ :html |
			html meta contentType: 'application/xhml+xml'  ]
		gives: '<title></title><meta http-equiv="Content-Type" content="application/xhml+xml"/>'