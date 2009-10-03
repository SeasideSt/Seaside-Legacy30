actions
execute
	| newEntryPoint |
	newEntryPoint := self requestor call: (WADispatcherCopyPage new dispatcher: self target ; yourself ).
	newEntryPoint isNil ifFalse: [self requestor configure: newEntryPoint]
