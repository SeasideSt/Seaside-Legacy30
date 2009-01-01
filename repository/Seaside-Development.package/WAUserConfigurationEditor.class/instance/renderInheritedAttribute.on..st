rendering-attributes
renderInheritedAttribute: anAttribute on: html 
	html text: (self valueForAttribute: anAttribute) printString