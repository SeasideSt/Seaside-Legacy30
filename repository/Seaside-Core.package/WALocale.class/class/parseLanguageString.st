class initialization
parseLanguageString
	| string lines |
	iso2Languages := Dictionary new.
	iso3Languages := Dictionary new.
	
	string := self languageList.
	lines := string findTokens: SeasidePlatformSupport sourceCodeLineSeparatorCharacter.
	lines do: [ :each |
		| threeCode twoCode language firstIndex secondIndex thirdIndex fourthIndex |
		firstIndex := each indexOf: $|.
		secondIndex := each indexOf: $| startingAt: firstIndex + 1.
		thirdIndex := each indexOf: $| startingAt: secondIndex + 1.
		fourthIndex := each indexOf: $| startingAt: thirdIndex + 1.
		
		threeCode := each copyFrom: 1 to: firstIndex - 1.
		twoCode := each copyFrom: secondIndex + 1 to: thirdIndex - 1.
		language := each copyFrom: thirdIndex + 1 to: fourthIndex - 1.
		
		iso3Languages at: threeCode put: language.
		twoCode isEmpty ifFalse: [
			iso2Languages at: twoCode put: language ] ]