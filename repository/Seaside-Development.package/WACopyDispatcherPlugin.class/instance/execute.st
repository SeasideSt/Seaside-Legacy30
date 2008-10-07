actions
execute
	| name |
	name := self requestor
		request: 'Name'
		label: 'add'
		default: self target name.
	name ifNil: [ ^ self ].
	self requestor handler
		register: (self target cloneHandler
			setName: name;
			yourself)