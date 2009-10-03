actions
execute
	| newEntryPoint |
	newEntryPoint := self requestor call: (WADispatcherAddPage new dispatcher: self requestor dispatcher; yourself ).
	newEntryPoint isNil ifFalse: [self requestor configure: newEntryPoint]
