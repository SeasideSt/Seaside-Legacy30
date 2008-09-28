rendering-attributes
renderInheritedAttribute: anAttribute on: html 
	html text: (self configuration valueForAttribute: anAttribute) printString