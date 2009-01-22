accessing
default
	^ default ifNil: [ default := self named: WAPlatform current defaultDispatcherName ]