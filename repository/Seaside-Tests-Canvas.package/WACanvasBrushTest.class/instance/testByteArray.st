testing-tags-forms
testByteArray
	self
		assert: [ :html | html render: #(83 101 97 115 105 100 101) asByteArray ]
		gives: 'Seaside'