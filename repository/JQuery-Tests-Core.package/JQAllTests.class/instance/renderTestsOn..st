rendering
renderTestsOn: html
	html div class: 'tests'; with: [
		tests do: [ :titleAndItems |
			html heading level: 3; with: titleAndItems key.
			html unorderedList: [
				titleAndItems value do: [ :titleAndClass |
					html listItem
						class: 'active' if: contents = titleAndClass value;
						with: [ 
							html anchor
								callback: [ contents := titleAndClass value ];
								with: titleAndClass key ] ] ] ] ]