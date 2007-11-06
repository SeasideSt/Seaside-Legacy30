rendering
renderContentOn: html
	html hiddenInput callback: [ validationError := nil ].
	validationError
		ifNotNil: [ self renderValidationError: validationError on: html ].
	html div
		class: self divClass;
		with: [ self renderDialogOn: html ]