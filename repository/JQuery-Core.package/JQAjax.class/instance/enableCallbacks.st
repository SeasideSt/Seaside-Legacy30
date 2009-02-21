private
enableCallbacks
	self hasCallback ifTrue: [ ^ self ].
	self url: owner canvas actionUrl withoutParameters.
	self addParameters: owner canvas actionUrl parameters.
	self addParameter: (callbackId := owner canvas callbacks
		store: (JSAjaxCallback on: [ self processCallback ]))