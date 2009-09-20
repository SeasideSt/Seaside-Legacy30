encoding
encodeOn: aDocument
	self encodeServerOn: aDocument.
	self encodePathOn: aDocument.
	self encodeParametersOn: aDocument.
	self encodeFragmentOn: aDocument