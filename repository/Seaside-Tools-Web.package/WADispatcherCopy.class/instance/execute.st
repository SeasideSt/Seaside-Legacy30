actions
execute
	| newEntryPoint |
	newEntryPoint := self requestor call: (WADispatcherCopyPage new dispatcher: self target ; yourself ).
	newEntryPoint ifNotNil: [self requestor configure: newEntryPoint]
