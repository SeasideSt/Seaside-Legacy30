rendering
renderContentOn: html
	html unorderedList
		script: (html jQuery new tabs spinner: '');
		with: [
			self berries keysAndValuesDo: [ :name :description |
				html listItem: [
					html anchor
						url: (html jQuery ajax
							html: [ :h | h text: description ];
							fullUrl);
						with: name ] ] ] 
