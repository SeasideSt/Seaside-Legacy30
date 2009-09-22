rendering
renderDispatcherOn: html
	html table: [
		self dispatcher isRoot
			ifFalse: [ self renderParentRow: dispatcher parent named: self upDirectory on: html ].
		self entryPoints keysSortedSafely
			do: [ :each | self renderRow: (dispatcher entryPoints at: each) named: each on: html ] ]