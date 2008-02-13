scripting
scriptMove: anInteger for: id on: script
	anInteger = 1 
			ifTrue: [offset = 1 ifTrue: [^self].
					offset := offset - scrollInc]
			ifFalse: [(offset + scrollInc abs) > (items size + 1) ifTrue: [^self].
					offset := offset + scrollInc].
	script effect id: id;
		duration: animationSpeed;
		y: 0; x: (self elementSize * scrollInc * anInteger);
		move 