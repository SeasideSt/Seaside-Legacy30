private
moveDown: selected using: aCollection
	| currentIndex element |
	selected isEmpty
			ifFalse: [
				currentIndex := aCollection indexOf: selected last.
				currentIndex < aCollection size
					ifTrue: [
						element := aCollection at: currentIndex + 1.
						aCollection removeAll: selected.
						selected do: [:each | 
							aCollection add: each after: element ] ] ]