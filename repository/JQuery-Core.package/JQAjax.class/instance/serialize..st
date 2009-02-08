convenience
serialize: aQuery
	"Serialize the elements matching aQuery and evaluates the associated callbacks."

	self enableCallbacks.
	self addParameter: aQuery serialize