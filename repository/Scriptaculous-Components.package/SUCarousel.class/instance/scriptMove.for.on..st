scripting
scriptMove: anInteger for: id on: script
	| currentIndex nextIndex |
	currentIndex := self lastOffset.
	anInteger = 1 
			ifTrue: [offset = 1 ifTrue: [^self].
					offset := offset - scrollInc.
					offset < 1 ifTrue: [offset := 1]]
			ifFalse: [(offset + scrollInc abs) > (items size + 1) ifTrue: [^self].
					offset := offset + scrollInc - 1].
			
	anInteger < 0 ifTrue: [
	nextIndex := (currentIndex + scrollInc - 1) min: (items size).
	nextIndex > currentIndex ifTrue: [
	currentIndex + 1 to: nextIndex do: [:idx | 
	script element
		id: (self uid: 'head' at: idx - 1);
		insertAfter: [ :html | 
			self renderElement: (items at: idx) index: idx color: Color yellow on: html ].
		]]].
	script effect id: id;
		duration: animationSpeed;
		y: 0; x: (self elementSize * scrollInc * anInteger);
		move 