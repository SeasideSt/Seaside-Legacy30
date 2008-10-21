accessing
documentClass
	^ documentClass ifNil: [ documentClass := WAHtmlStreamDocument ]