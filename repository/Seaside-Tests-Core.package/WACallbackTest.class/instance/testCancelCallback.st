testing-callbacks
testCancelCallback
	| keyValue keySave keyCancel |
	keyValue := registry registerValueCallback: [ :v | log add: v ].
	keySave := registry registerActionCallback: [ log add: 'save' ].
	keyCancel := registry registerCancelActionCallback: [ log add: 'cancel' ].

	" a save callback "
	self
		should: [ self request: (WASmallDictionary new at: keyValue put: 'a'; at: keySave put: nil; yourself) ]
		raise: WARenderNotification.
	self assertLog: #('a' 'save').

	self
		should: [ self request: (WASmallDictionary new at: keySave put: nil; at: keyValue put: 'b'; yourself) ]
		raise: WARenderNotification.
	self assertLog: #('b' 'save').
	
	" a cancel callback "
	self
		should: [ self request: (WASmallDictionary new at: keyValue put: 'a'; at: keyCancel put: nil; yourself) ]
		raise: WARenderNotification.
	self assertLog: #('cancel').

	self
		should: [ self request: (WASmallDictionary new at: keyCancel put: nil; at: keyValue put: 'b'; yourself) ]
		raise: WARenderNotification.
	self assertLog: #('cancel')