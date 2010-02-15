rendering
renderDispatcherOn: html
	html table: [
		self dispatcher isRoot
			ifFalse: [ self renderParentRow: dispatcher named: self upDirectory on: html ].
		self handlers keys sorted
			do: [ :each | self renderRow: (dispatcher handlers at: each) named: each on: html ] ]