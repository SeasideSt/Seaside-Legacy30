private
handlersToPush
	^super handlersToPush, (Array with: WAApplication new with: WASession new)