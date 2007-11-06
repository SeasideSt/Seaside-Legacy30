rendering
renderContentOn: html
	| last selected |
	last := nil.
	html unorderedList
		class: 'trail';
		with: [
			root visiblePresentersDo: [ :each |
				(each isDecoration and: [each isDelegation]) ifTrue: [
					(each component respondsTo: #trailName) ifTrue: [
						last := each.
						html listItem: [
							html anchor
								callback: [ each remove ];
								with: each component trailName ] ] ] ].
			selected := last ifNil: [ root ] ifNotNil: [ last delegate ].
			(selected respondsTo: #trailName) ifTrue: [
				html listItem: selected trailName ] ]