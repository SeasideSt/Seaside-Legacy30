private-parsing
parseMembersDo: aOneArgumentBlock
	self current ~= $} ifTrue: [
		aOneArgumentBlock value: self parsePair.
		[ self current = $, ] whileTrue: [
			self nextNonWhiteSpace.
			aOneArgumentBlock value: self parsePair ] ]