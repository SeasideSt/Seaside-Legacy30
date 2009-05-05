rendering
renderRowEdit: anItem on: html
	html tableData: [ 
		html textInput
			" focus the first input field "
			script: (html jQuery this triggerFocus);
			on: #name of: anItem ].
	html tableData: [ 
		html textInput 
			on: #phone of: anItem ].
	html tableData: [
		html anchor
			url: '#';
			onClick: (html jQuery ajax
				" serialize the form elements in the table row "
				serialize: ((html jQuery this closest: 'tr') find: ':input');
				" trigger a refresh on all connected tables "
				html: [ :r |
					self pusher javascript: [ :s |
						s add: ((s jQuery: 'table') 
							trigger: 'refresh') ] ]);
			with: 'save' ]