actions
setDefault
	| disp |
	selection isNil ifFalse: [
		disp := WADispatcher default.
		selection url path do: [:key | 
			disp isNil ifFalse: [
				disp defaultName: key.
				disp := disp handlerAt: key ifAbsent: [] ] ] ]
								