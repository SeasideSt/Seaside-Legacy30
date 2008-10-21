rendering
renderNavigationOn: html
	html div id: 'navigation'; with: [
		html div class: 'left'.
		html unorderedList: [
			self navigation do: [ :pair |
				html listItem: [
					html anchor
						url: pair first;
						with: pair last ] ] ].
		html div class: 'right' ]