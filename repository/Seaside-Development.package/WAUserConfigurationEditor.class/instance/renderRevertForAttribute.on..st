rendering-attributes
renderRevertForAttribute: anAttribute on: html 
	html anchor
		onClick: 'return submitForm(this)';
		callback: [ self configuration clearValueForAttribute: anAttribute ];
		with: 'clear'