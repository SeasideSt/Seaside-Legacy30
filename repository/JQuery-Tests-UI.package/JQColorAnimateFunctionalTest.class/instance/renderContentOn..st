rendering
renderContentOn: html
	self renderBoxOn: html.
	html paragraph class: 'actions'; with: [
		html anchor
			onClick: ((html jQuery: #box) animate
				backgroundColor: '#ef2929';
				border: '2px solid #cc0000');
			with: 'red'.
		html anchor
			onClick: ((html jQuery: #box) animate
				backgroundColor: '#72d216';
				border: '2px solid #4e9a06');
			with: 'green' ]