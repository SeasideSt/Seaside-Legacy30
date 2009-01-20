private
pushHandlers: aSequenceableCollection for: aContext
	aSequenceableCollection isEmpty
		ifTrue: [ super performTest ]
		ifFalse: [
			aContext
				push: aSequenceableCollection first
				while: [ self pushHandlers: aSequenceableCollection allButFirst for: aContext ] ]