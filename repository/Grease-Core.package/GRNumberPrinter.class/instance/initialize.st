initialization
initialize
	super initialize.
	characters := NumbersToCharactersLowercase.
	base := 10.
	delimiter := $..
	infinite := 'Infinite'.
	nan := 'NaN'.
	padding := $ .
	precision := 0