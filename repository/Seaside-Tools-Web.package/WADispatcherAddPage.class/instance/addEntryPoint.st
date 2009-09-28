actions
addEntryPoint
	| newHandler |
	(name isNil or: [ name isEmpty ])
		ifTrue: [ ^ self inform: 'You must enter a path-name.' ].
	newHandler := WAAdmin register: type at: name in: self dispatcher.
	self answer: newHandler
	"newHandler isApplication ifTrue: [ WAAdmin configureNewApplication: newHandler ]."
	"editorCommand := WAConfigureDispatcherPlugin on: newHandler for: self.
	editorCommand isActive ifTrue: [ editorCommand execute ]"