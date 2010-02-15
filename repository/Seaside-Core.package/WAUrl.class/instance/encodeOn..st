encoding
encodeOn: aDocument
	self encodeSchemeAndAuthorityOn: aDocument.
	self encodePathOn: aDocument.
	queryFields notNil ifTrue: [
		aDocument htmlEncoder nextPut: $?.
		self encodeQueryOn: aDocument ].
	fragment notNil ifTrue: [
		aDocument htmlEncoder nextPut: $#.
		self encodeFragmentOn: aDocument ]