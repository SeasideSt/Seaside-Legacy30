encoding
encodeOn: aDocument usingHtmlEntities: aBoolean
	self encodeServerOn: aDocument.
	self encodePathOn: aDocument.
	self
		encodeParametersOn: aDocument
		usingHtmlEntities: aBoolean.
	self encodeFragmentOn: aDocument