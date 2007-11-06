rendering-attributes
renderRevertForAttribute: anAttribute on: html
	html anchor callback: [configuration clearValueForAttribute: anAttribute]; with: 'clear'