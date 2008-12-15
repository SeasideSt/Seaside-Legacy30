testing
testParseIllegal
	self assertIllegal: '{{ }'.
	self assertIllegal: '{ key : "value" }'.
	self assertIllegal: '{ "key" : "\a" }'.
	self assertIllegal: '{ "key" : "\u1" }'.
	self assertIllegal: '{ "key" : "\u11" }'.
	self assertIllegal: '{ "key" : "\u111" }'.
	self assertIllegal: '{ "key" : "\uGGGG" }'.
	self assertIllegal: '{ "key" : "\u20ac" }'.
	self assertIllegal: '{ "key" : "', (String with: Character lf) ,'" }'.
	self assertIllegal: '{ "key" : 00 }'.
	self assertIllegal: '{ "key" : -00 }'.
	self assertIllegal: '{ "key" : 01 }'.
	self assertIllegal: '{ "key" : .1 }'.
	self assertIllegal: '{ "key" : 1. }'.
	self assertIllegal: '{ "key" : -01 }'.
	self assertIllegal: ' { }}'.
	self assertIllegal: ''''''.
	self assertIllegal: '''foo'''.
	self assertIllegal: '''fo\''o'''.