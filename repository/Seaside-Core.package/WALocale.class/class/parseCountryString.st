class initialization
parseCountryString
	| string lines |

	iso2Countries := Dictionary new.
	string := self countryList.
	lines := string findTokens: Character cr.
	lines allButFirst collect: [:each |
		| parts |
		parts := each findTokens: $;.
		parts size >= 2 ifTrue: [
			iso2Countries at: parts second put: parts first ] ]