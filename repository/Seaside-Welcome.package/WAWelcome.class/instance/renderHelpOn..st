rendering
renderHelpOn: html
	^ html unorderedList: [ 
		html listItem: [ 
			html anchor
				url: 'http://lists.squeakfoundation.org/listinfo/seaside';
				with: 'Mailing List' ] ]