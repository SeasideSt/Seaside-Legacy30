initialize-release
initialize
	formatBlock := [:x | x displayString].
	sortBlock := [:a :b | a <= b].
	valueBlock := [:row | nil].
	clickBlock := nil.
	title := 'Untitled'.
	hasTotal := false