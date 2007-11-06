actions
addEntryPoint
	| handler editor |
	(name isNil or: [ name isEmpty ])
		ifTrue: [ ^ self inform: 'You must enter a path-name.' ].
	handler := type named: name.
	dispatcher register: handler.
	editor := WAConfigureDispatcherPlugin on: handler for: self.
	editor isActive ifTrue: [ editor execute ]