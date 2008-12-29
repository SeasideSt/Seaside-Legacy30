rendering-attributes
renderOverrideForAttribute: anAttribute on: html 
	html anchor
		onClick: 'return submitForm(this)';
		callback: [ self configuration overrideAttribute: anAttribute ];
		with: 'edit'