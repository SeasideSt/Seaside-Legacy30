processing
updateRoot: aHtmlRoot
	"This is very hacky and removes all styles and scripts that might have been added before. This is done because this library might be temporarily used in the context of an application that adds its own styles that we don't want at the moment a development tool is displayed."
	
	aHtmlRoot headElements: (aHtmlRoot headElements
		reject: [ :each | each isKindOf: WAContentElement ]).
	super updateRoot: aHtmlRoot