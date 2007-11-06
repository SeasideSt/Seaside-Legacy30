rendering
renderDispatcherOn: html
	html heading level2; with: self dispatcher basePath , '/'.
	html table: [
		self dispatcher isRoot
			ifFalse: [ self renderRow: self dispatcher parent named: '..' on: html ].
		self entryPoints keysSortedSafely
			do: [ :each | self renderRow: (dispatcher entryPoints at: each) named: each on: html ] ]