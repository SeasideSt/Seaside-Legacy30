rendering-attributes
renderInheritedAttribute: anAttribute on: html
	html text: (configuration valueForAttribute: anAttribute) printString