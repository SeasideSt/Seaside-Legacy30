rendering
renderContentOn: html
	message contents ifNotNilDo: [ :msg |
		html div
			class: 'validation-error';
			with: msg].
	self renderOwnerOn: html