rendering-parts
renderAddRequestHandlerOn: html
	html heading level: 3; with: 'Add request handler'.
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
						list: self handlerClasses;
						callback: [ :value | type := value ];
						labels: [ :each | each description ].
				html space.
				html submitButton
					callback: [ self addRequestHandler ];
					text: 'Add' ] ] ] ]