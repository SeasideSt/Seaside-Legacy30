actions
execute
	self requestor 
		show: (WADispatcherAddPage new dispatcher: self requestor dispatcher; yourself )
		onAnswer: [ :newEntryPoint |
			newEntryPoint isNil 
				ifFalse: [ self requestor configure: newEntryPoint ] ]
