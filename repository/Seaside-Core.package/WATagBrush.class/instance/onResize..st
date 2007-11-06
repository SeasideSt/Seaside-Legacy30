convenience
onResize: aString
	self attributes at: 'onresize' append: aString separator: ';'