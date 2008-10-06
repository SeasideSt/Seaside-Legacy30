testing
testInternalError
	[ Error raiseSignal: 'foo'.
	self assert: false ]
			on: Error
			do: [ :error |
		| body |
		response := WAResponse internalError: error.
		self assert: response status = 500.
		self assert: response contentType = WAMimeType textPlain.
		self assert: (response contents contents beginsWith: 'Internal Error: Error: foo') ]