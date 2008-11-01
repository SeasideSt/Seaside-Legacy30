private
processConnection: aSocket
	| stream |
	stream := SocketStream on: aSocket.
	stream autoFlush: true.
	[ [ [ self
			writeResponseForRequest: (HttpRequest readFromStream: stream)
			on: (self outputStreamFor: stream). ]
		ensure: [ stream close ] ]
		ifCurtailed: [ aSocket destroy ] ]
		forkAt: Processor userBackgroundPriority