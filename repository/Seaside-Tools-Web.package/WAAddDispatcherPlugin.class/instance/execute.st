actions
execute
	| newEntryPoint |
	newEntryPoint := self requestor call: (WADispatcherAddPage new dispatcher: self requestor dispatcher; yourself ).
	newEntryPoint ifNotNil: [self requestor configure: newEntryPoint]
