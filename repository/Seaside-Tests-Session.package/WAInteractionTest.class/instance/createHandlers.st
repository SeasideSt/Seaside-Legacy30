private
createHandlers
	| dispatcher application session |
	dispatcher := WADispatcher named: 'rails'.
	application := (WAApplication named: 'homepage')
		setParent: dispatcher;
		yourself.
	session := WASession new.

	^super createHandlers, (Array with: dispatcher with: application with: session)