rendering
renderContentOn: html
	html unorderedList
		script: (html jQuery new accordion 
			header: '.ui-accordion-header';
			autoHeight: false);
		with: [
			self berries keysAndValuesDo: [ :name :description |
				html listItem class: 'ui-accordion-group'; with: [
					html div
						class: 'ui-accordion-header';
						with: [ html anchor: name ].
					html div
						class: 'ui-accordion-content';
						with: description ] ] ]