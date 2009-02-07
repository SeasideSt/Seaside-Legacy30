private-controlling
basicStop
	process ifNotNil: [ process terminate ].
	process := nil