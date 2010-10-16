*seaside-pharo-email
isIpAddress: aString
	| ip |
	ip := aString findTokens: '.'.
	^ ip size = 4
		and: [ ip allSatisfy: [ :each | each greaseInteger notNil
			and: [ each greaseInteger notNil between: 0 and: 255] ] ]