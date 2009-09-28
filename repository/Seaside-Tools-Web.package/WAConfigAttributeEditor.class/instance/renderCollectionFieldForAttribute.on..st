rendering
renderCollectionFieldForAttribute: anAttribute on: html
	(self configuration at: anAttribute key) isNil
					ifTrue: [ self renderUnspecifiedAttribute: anAttribute on: html ]
					ifFalse: [self renderOverridenAttribute: anAttribute on: html].
	html tableData: [
					html anchor
						onClick: 'return submitForm(this)';
						title: 'Configure collection attribute';
						callback: [ self configureCollectionAttribute: anAttribute ]; 
						with: 'Configure' ]