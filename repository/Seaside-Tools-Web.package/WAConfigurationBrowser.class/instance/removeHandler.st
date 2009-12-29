actions
removeHandler
	| aDispatcher |
	aDispatcher := self dispatcher.
	aDispatcher unregister: self selection.
	aDispatcher handlers isEmpty
		ifTrue: [
			aDispatcher := self dispatcher.
			self expand: aDispatcher parent; configure: aDispatcher ]
		ifFalse: [ self selectFirst ]