private
newHandler
	^ WADispatcher new
		register: self newEntryPoint
		at: self newEntryPointName