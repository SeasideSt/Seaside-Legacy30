rendering
renderMouseButtonOn: html
	| group |
	html form: [
		html table: [
			html tableRow: [
				html tableData: 'Button: '.
				group := html radioGroup.
				#(red yellow blue) do: [ :each |
					html tableData
						style: 'background-color: ' , each;
						with: [
							group radioButton
								selected: button = each;
								callback: [ button := each] ] ].
				html tableData: [
					html submitButton text: 'Set'] ] ] ]