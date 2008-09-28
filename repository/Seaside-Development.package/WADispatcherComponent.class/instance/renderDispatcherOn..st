rendering
renderDispatcherOn: html
	html table: [
		self handler isRoot
			ifFalse: [ self renderRow: self handler parent named: '..' on: html ].
		self entryPoints keysSortedSafely
			do: [ :each | self renderRow: (self handler entryPoints at: each) named: each on: html ] ]