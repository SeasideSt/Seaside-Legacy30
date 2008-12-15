private
nextNonWhiteSpace
	self advance.
	currentPosition to: toParse size do: [ :index |
		| next |
		currentPosition := index.
		next := toParse at: index.
		(WhiteSpace includes: next)
			ifFalse: [ ^next ] ].
	currentPosition := toParse size + 1
	
