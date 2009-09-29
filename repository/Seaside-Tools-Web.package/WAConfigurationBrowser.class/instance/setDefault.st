actions
setDefault
	| disp |
	selection isNil ifFalse: [
		disp := WADispatcher default.
		selection baseUrl path do: [:key | 
			disp isNil ifFalse: [
				disp defaultName: key.
				disp := disp handlerAt: key ifAbsent: [] ] ] ]
								