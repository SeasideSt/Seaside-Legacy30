processing
go
	[ (self confirm: 'Raise an exception?')
		ifTrue: [ self error: 'foo' ] ]
			on: Error
			do: [ :error | self inform: 'Caught: ', error description ]