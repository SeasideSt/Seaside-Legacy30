private
listenLoop
	| socket |
	socket := Socket newTCP.
	socket listenOn: port backlogSize: 50.
	socket isValid
		ifFalse: [ self error: 'Cannot create socket on port ' , port seasideString ].
	
	[ [ socket isValid ifFalse: [
			"will trigger #ifCurtailed: block and destroy socket"
		^ self listenLoop ].
		self waitForConnectionOn: socket ] repeat ] ifCurtailed: [
			"probably copy pasted from ConnectionQueue >> #listenLoop"
			(Delay forMilliseconds: 10) wait.
			socket destroy ]