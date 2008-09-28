rendering-parts
renderAddEntryPointOn: html
	html heading level: 3; with: 'Add entry point'.
	html form: [
		html table: [
			html tableRow: [
				html tableData class: 'label'; with: 'Name: '.
				html tableData: [
					html textInput
						callback: [ :value | name := value ] ] ].
			html tableRow: [
				html tableData class: 'label'; with: 'Type: '.
				html tableData: [
					html select
						selected: type;
						list: self entryPointClasses;
						callback: [ :value | type := value ];
						labels: [ :each | each description ].
				html space.
				html submitButton
					callback: [ self addEntryPoint ];
					text: 'Add' ] ] ] ]