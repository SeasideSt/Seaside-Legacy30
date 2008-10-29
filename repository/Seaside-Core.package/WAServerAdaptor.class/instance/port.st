accessing
port
	port isNil ifTrue: [ port := self defaultPort ].
	^ port