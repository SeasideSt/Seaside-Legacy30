actions
execute
	self requestor 
		show: (WADispatcherCopyPage new dispatcher: self target; yourself)
		onAnswer: [ :newEntryPoint |
			newEntryPoint isNil 
				ifFalse: [ self requestor configure: newEntryPoint ] ]
