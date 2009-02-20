private
enableCallbacks
	self hasCallback ifTrue: [ ^ self ].
	self url: owner canvas context actionUrl withoutParameters.
	self addParameters: owner canvas context actionUrl parameters.
	self addParameter: (callbackId := owner canvas callbacks
		store: (JSAjaxCallback on: [ self processCallback ]))