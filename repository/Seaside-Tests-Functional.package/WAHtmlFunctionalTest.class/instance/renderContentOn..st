rendering
renderContentOn: html
	"don't use pairsDo:, doesn't work for JPMorgan"
	| selectors indices |
	selectors := self allSelectors.
	indices := (1 to: selectors size) select: [ :each | each odd ].
	indices do: [ :index |
		html div
			class: 'row';
			with: [
				html div
					class: 'left';
					with: [
						self
							perform: (selectors at: index)
							with: html ].
				index < selectors size ifTrue: [
					html div
						class: 'left';
						with: [
							self
								perform: (selectors at: index + 1)
								with: html ] ] ] ]