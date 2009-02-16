private
basicStop
	process ifNotNil: [ process terminate ].
	process := nil