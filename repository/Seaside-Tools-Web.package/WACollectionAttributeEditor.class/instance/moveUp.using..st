private
moveUp: selected using: aCollection
	| currentIndex element |
	selected isEmpty
			ifFalse: [
				currentIndex := aCollection indexOf: selected first.
				currentIndex > 1
					ifTrue: [
						element := aCollection at: currentIndex - 1.
						aCollection removeAll: selected.
						selected do: [:each | 
							aCollection add: each before: element ] ] ]