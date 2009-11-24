actions
execute
	self requestor 
		show: (WADispatcherCopyPage new handler: self target; yourself)
		onAnswer: [ :newHandler |
			newHandler isNil 
				ifFalse: [ self requestor configure: newHandler ] ]
