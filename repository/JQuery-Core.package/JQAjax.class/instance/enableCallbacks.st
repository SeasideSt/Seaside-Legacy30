private
enableCallbacks
	self hasCallback ifTrue: [ ^ self ].
	self url: self renderContext actionUrl withoutParameters.
	self addParameters: self renderContext actionUrl parameters.
	self addParameter: (callbackId := self renderContext callbacks
		store: (JSAjaxCallback on: [ self processCallback ]))