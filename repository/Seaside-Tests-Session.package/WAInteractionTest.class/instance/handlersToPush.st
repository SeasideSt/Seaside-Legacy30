private
handlersToPush
	| dispatcher application session |
	dispatcher := WADispatcher named: 'rails'.
	application := (WAApplication named: 'homepage')
		setParent: dispatcher;
		yourself.
	session := WASession new.

	^super handlersToPush, (Array with: dispatcher with: application with: session)