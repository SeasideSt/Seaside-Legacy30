rendering
renderChooserOn: html
	html div class: 'chooser'; with: [
		html form: [
			html select
				beSubmitOnChange;
				list: self allClasses;
				selected: class;
				callback: [ :value | self class: value ] ].
		self allSelectors size > 1 ifTrue: [
			html form: [
				html select
					beSubmitOnChange;
					list: self allSelectors;
					selected: selector;
					callback: [ :value | self selector: value ] ] ] ]