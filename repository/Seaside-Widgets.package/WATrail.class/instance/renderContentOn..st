rendering
renderContentOn: html
	| last selected |
	last := nil.
	html div
		class: 'trail';
		with: [
			root visiblePresentersDo: [ :each |
				(each isDecoration and: [each isDelegation]) ifTrue: [
					(each component respondsTo: #trailName) ifTrue: [
						last := each.
						html anchor
							callback: [ each remove ];
							with: each component trailName.
					
						html span
							class: 'separator';
							with: self separator. ] ] ] .
			selected := last isNil
				ifTrue: [ root ]
				ifFalse: [ last delegate ].
			(selected respondsTo: #trailName) ifTrue: [
				html text: selected trailName ]]