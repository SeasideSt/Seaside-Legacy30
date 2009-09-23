rendering
renderContentOn: html
	html heading level: 3; with: 'Copy entry point'.
	html form: [
		html table: [
			html tableRow: [
				html tableData class: 'label'; with: 'Name: '.
				html tableData: [
					html textInput
						callback: [ :value | name := value ] ] ] ].
			html break.
				html submitButton
					callback: [ self copyEntryPoint ];
					with: 'OK'.
				html space.
				html submitButton
					callback: [ self answer: nil ];
					with: 'Cancel'  ] 