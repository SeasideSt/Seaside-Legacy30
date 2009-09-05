private
createHandlers
	| dispatcher application session root |
	root := WADispatcher new.
	dispatcher := root register: WADispatcher new at: 'rails'.
	application := dispatcher register: WAApplication new at: 'homepage'..
	session := WASession new.

	^super createHandlers, (Array with: root with: dispatcher with: application with: session)