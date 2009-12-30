rendering
renderMouseButtonOn: html
	| group |
	html form: [
		html table: [
			html tableRow: [
				html tableData: 'Button: '.
				group := html radioGroup.
				group callback: [:value | button := value].
				#(red yellow blue) do: [ :each |
					html tableData
						style: 'background-color: ', each;
						with: [
							group radioButton
								selected: button = each;
								value: (group valueFor: each) ] ].
				html tableData: [
					html submitButton text: 'Set'] ] ] ]