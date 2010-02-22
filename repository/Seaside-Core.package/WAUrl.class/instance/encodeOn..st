encoding
encodeOn: aDocument
	self encodeSchemeAndAuthorityOn: aDocument.
	self encodePathOn: aDocument.
	queryFields notNil ifTrue: [
		aDocument xmlEncoder nextPut: $?.
		self encodeQueryOn: aDocument ].
	fragment notNil ifTrue: [
		aDocument xmlEncoder nextPut: $#.
		self encodeFragmentOn: aDocument ]