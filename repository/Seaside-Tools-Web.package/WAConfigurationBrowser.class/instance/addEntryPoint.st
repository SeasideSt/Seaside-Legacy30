actions
addEntryPoint
	| newHandler editorCommand |
	(name isNil or: [ name isEmpty ])
		ifTrue: [ ^ self inform: 'You must enter a path-name.' onAnswer: [ :v | ] ].
	newHandler :=  WAAdmin register: type at: name in: self dispatcher.
	newHandler isApplication ifTrue: [
		newHandler configuration
			removeParent: WAApplicationConfiguration instance;
			addParent: WARenderLoopConfiguration instance ].
	editorCommand := WAConfigureDispatcherPlugin on: newHandler for: self.
	editorCommand isActive ifTrue: [ editorCommand execute ]