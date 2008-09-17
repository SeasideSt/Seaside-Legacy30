private
handlersToPush
	^super handlersToPush, (Array
		with: configApplication
		with: (WASession new setParent: configApplication; yourself))