adding
addToPath: aString
	"Adds the argument as a path element. If the argument contains $/ it is split into multiple elements"
	self path addAll: (aString findTokens: '/')