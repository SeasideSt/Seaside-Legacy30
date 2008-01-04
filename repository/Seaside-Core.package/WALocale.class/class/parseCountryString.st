class initialization
parseCountryString
	| string lines |
	
	iso2Countries := Dictionary new.
	
	string := self countryList.
	lines := string subStrings: String crlf.
	lines allButFirst collect: [ :each |
		| parts |
		parts := each findTokens: $;.
		iso2Countries at: parts second put: parts first ]