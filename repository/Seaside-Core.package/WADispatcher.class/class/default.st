accessing
default
	^ default ifNil: [ default := self named: self defaultDispatcherName ]