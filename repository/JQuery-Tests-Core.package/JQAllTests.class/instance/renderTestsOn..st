rendering
renderTestsOn: html
	html div class: 'tests'; with: [
		self tests do: [ :titleAndItems |
			html heading level: 3; with: titleAndItems key.
			html unorderedList: [
				titleAndItems value do: [ :titleAndClass |
					html listItem
						class: 'active' if: titleAndClass value = contents class;
						with: [ 
							html anchor
								callback: [ contents := titleAndClass value new ];
								with: titleAndClass key ] ] ] ] ]