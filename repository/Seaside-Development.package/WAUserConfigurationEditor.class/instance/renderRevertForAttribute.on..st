rendering-attributes
renderRevertForAttribute: anAttribute on: html 
	html anchor
		callback: [ self configuration clearValueForAttribute: anAttribute ];
		with: 'clear'