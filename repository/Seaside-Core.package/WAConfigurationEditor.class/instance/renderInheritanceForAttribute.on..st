rendering-attributes
renderInheritanceForAttribute: anAttribute on: html
	configuration inheritedValueAndSourceAt: anAttribute key do: [:value :source |
		(configuration hasLocalValueForAttribute: anAttribute)
			ifTrue: [
				html tableData: [
					html anchor callback: [configuration clearValueForAttribute: anAttribute]; with: 'revert'.
					html text: ' to: ', value printString].
				html tableData: 'overriden from ', source name ]
			ifFalse: [
				html tableData: [
					html anchor callback: [configuration overrideAttribute: anAttribute]; with: 'override'].
				html tableData: 'inherited from ', source name ].
		^ self ].
	(configuration hasLocalValueForAttribute: anAttribute)
		ifTrue: [
			html tableData: [
				html anchor callback: [configuration clearValueForAttribute: anAttribute]; with: 'clear']]
		ifFalse: [
			html tableData: [
				html span
					class: 'unspecified';
					with: '(unspecified)' ] ].
	html tableData