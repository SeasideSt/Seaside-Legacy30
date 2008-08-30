rendering
renderContentOn: html
	| elementId |
	elementId := html nextId.
	html paragraph: [
		self insertions do: [ :each |
			html anchor
				onClick: (html updater
					id: elementId;
					insertion: each;
					on: #renderElementOn: of: self);
				with: each.
			html break ] ].
	html paragraph: [
		html div class: 'targetElement'; id: elementId; with: 'Target Element' ]