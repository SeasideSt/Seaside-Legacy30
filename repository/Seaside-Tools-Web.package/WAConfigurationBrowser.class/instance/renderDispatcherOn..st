rendering
renderDispatcherOn: html
	html table: [
		self dispatcher isRoot
			ifFalse: [ self renderParentRow: dispatcher parent named: self upDirectory on: html ].
		self handlers keysSortedSafely
			do: [ :each | self renderRow: (dispatcher handlers at: each) named: each on: html ] ]