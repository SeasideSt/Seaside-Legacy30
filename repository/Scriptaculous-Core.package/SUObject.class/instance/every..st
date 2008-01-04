decorations
every: aDuration
	"Execute the receiver every aDuration."

	self addDecoration: (SUExecuter new frequency: aDuration)