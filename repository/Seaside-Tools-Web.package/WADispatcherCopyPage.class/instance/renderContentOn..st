rendering
renderContentOn: html
	html heading level: 2; with: 'Copy entry point: ', dispatcher name.
	html form: [
		html table: [
			html tableRow: [
				html tableData class: 'label'; with: 'Name for new entry point: '.
				html tableData: [
					html textInput
						value: dispatcher name , '_copy';
						callback: [ :value | name := value ] ] ] ].
			html break.
				html submitButton
					callback: [ self copyEntryPoint ];
					with: 'OK'.
				html space.
				html submitButton
					callback: [ self answer: nil ];
					with: 'Cancel'  ] 