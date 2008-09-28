actions
addEntryPoint
	| newHandler editorCommand |
	(name isNil or: [ name isEmpty ])
		ifTrue: [ ^ self inform: 'You must enter a path-name.' ].
	newHandler := type register: name.
	newHandler isApplication ifTrue: [
		newHandler configuration
			removeParent: WASessionConfiguration instance;
			addParent: WARenderLoopConfiguration instance ].
	editorCommand := WAConfigureDispatcherPlugin on: newHandler for: self.
	editorCommand isActive ifTrue: [ editorCommand execute ]