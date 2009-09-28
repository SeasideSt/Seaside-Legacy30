actions
addRequestHandler
	(name isNil or: [ name isEmpty ])
		ifTrue: [ ^ self inform: 'You must enter a path-name.' onAnswer: [ :v | ] ].
	WAAdmin register: type at: name in: self dispatcher.
	"newHandler isApplication ifTrue: [ WAAdmin configureNewApplication: newHandler ]."
	"editorCommand := WAConfigureDispatcherPlugin on: newHandler for: self.
	editorCommand isActive ifTrue: [ editorCommand execute ]"