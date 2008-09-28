rendering-attributes
renderOverrideForAttribute: anAttribute on: html 
	html anchor
		callback: [ self configuration overrideAttribute: anAttribute ];
		with: 'edit'