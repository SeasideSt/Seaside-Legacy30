events
trigger: anEvent
	"Pass anEvent to all subscribers of anEvent class."
	
	subscribers ifNil: [ ^ anEvent ].
	subscribers keysAndValuesDo: [ :class :actions |
		(anEvent isKindOf: class) ifTrue: [
			actions do: [ :action | action value: anEvent ] ] ].
	^ anEvent