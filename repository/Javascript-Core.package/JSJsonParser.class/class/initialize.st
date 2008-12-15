class initialization
initialize
	WhiteSpace := Set new
		add: Character space;
		add: Character tab;
		add: (Character value: 16r0B);
		add: Character cr;
		add: Character lf;
		yourself.
	ForbiddenStringCharacters := Set new.
	ForbiddenStringCharacters add: $".
	#(0 7 8 9 10 12 13 27 127) do: [ :each |
		ForbiddenStringCharacters add: (Character value: each) ]