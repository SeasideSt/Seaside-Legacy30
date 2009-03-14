private
createHandlers
	^super createHandlers, (Array
		with: configApplication
		with: WASession new)