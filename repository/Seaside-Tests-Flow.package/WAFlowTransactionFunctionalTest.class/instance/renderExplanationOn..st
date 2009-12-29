rendering
renderExplanationOn: html
	html paragraph: 'This checks if nested #isolate: block work. It has the following nested transactions:'.
	html orderedList: [
		html listItem: 'Inside parent txn'.
		html listItem: [
			html orderedList: [
				html listItem: 'Inside child txn' ] ].
		html listItem: 'Outside child txn' ].
	html paragraph: 'If you leave the child transaction and enter it with the back button you should end up in the parent transaction. If you leave the parent transaction with the back button and enter either it or the child transaction with the back button you should end up outside the parent transaction.'