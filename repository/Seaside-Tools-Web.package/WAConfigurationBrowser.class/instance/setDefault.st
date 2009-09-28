actions
setDefault
	| disp |
	selection ifNotNil: [
		disp := WADispatcher default.
		selection baseUrl path do: [:key | 
			disp ifNotNil: [
				disp defaultName: key.
				disp := disp entryPointAt: key ifAbsent: [] ] ] ]
								