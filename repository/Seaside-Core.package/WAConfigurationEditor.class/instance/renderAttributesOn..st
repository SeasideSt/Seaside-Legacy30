rendering-attributes
renderAttributesOn: html
	html heading level2; with: 'Configuration'.
	html table: [
		configuration groupedAttributes do: [ :associaction |
			html tableRow: [
				html tableData
					colSpan: 4;
					with: [ html heading level3; with: (self labelForSelector: associaction key) ] ].
				associaction value do: [ :attribute |
				self renderAttribute: attribute on: html ] ] ]