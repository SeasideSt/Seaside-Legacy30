initialize-release
initialize
	super initialize.
	formatBlock := [ :x | x seasideString ].
	sortBlock := [ :a :b | a <= b ].
	valueBlock := [ :row | nil ].
	clickBlock := nil.
	title := 'Untitled'.
	hasTotal := false