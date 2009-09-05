actions
execute
	self requestor
		request: 'Name'
		label: 'add'
		default: self target name
		onAnswer: [ :name |
			name isNil ifFalse: [
				self requestor dispatcher
					register: self target cloneHandler
					at: name ] ]