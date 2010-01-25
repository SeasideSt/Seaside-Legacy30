rendering
renderDispatcherOn: html
	html table: [
		self dispatcher isRoot
			ifFalse: [ self renderRow: self dispatcher parent named: self upDirectory on: html ].
		self handlers keys asSortedCollection
			do: [ :each | self renderRow: (self dispatcher handlers at: each) named: each on: html ] ]