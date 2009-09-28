rendering
renderDispatcherOn: html
	html table: [
		self dispatcher isRoot
			ifFalse: [ self renderRow: self dispatcher parent named: self upDirectory on: html ].
		self entryPoints keysSortedSafely
			do: [ :each | self renderRow: (self dispatcher entryPoints at: each) named: each on: html ] ]