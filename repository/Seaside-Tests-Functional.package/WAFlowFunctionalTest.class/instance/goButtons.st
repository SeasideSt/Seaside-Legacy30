actions
goButtons
	1 to: 5 do: [ :each |
		self inform: each seasideString, ': ', self stackDepth seasideString ]