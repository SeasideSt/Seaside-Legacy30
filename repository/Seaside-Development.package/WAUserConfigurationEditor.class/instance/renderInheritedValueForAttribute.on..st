rendering-attributes
renderInheritedValueForAttribute: anAttribute on: html 
	| inheritedValue |
	inheritedValue := self configuration inheritedValueAt: anAttribute key.
	inheritedValue isNil 
		ifTrue: [
			html span
				class: 'unspecified';
				with: '(unspecified)' ]
		ifFalse: [ html text: inheritedValue printString ]