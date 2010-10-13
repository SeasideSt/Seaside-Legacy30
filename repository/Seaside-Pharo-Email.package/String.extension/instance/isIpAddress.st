*seaside-pharo-email
isIpAddress

	| ip |
	ip := self findTokens: '.'.
	^ (ip size = 4) 
		ifFalse: [false]
		ifTrue: [
			ip allSatisfy: [:ea | ea greaseInteger
				ifNil: [false]
				ifNotNil: [:num | num between: 0 and: 255]]]