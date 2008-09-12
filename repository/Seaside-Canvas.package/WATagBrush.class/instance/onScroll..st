convenience
onScroll: aString
	self attributes at: 'onscroll' append: aString separator: ';'