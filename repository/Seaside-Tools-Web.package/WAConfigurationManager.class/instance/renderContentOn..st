rendering
renderContentOn: html
	html table cellspacing: 0; cellpadding: 0;style: 'margin:0;'; with: [html tableRow: [
					html tableData style: 'padding:4px;border-right:2px solid #ccc'; verticalAlign: 'top'; with: [ self renderDispatcherOn: html.].
					html tableData style: 'padding-left:6px;'; verticalAlign: 'top'; with: [ self renderEditorOn: html]]]

	